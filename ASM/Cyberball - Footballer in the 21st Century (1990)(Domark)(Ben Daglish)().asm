; Music of Cyberball - Footballer in the 21st Century (1990)(Domark)(Ben Daglish)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CYBFIT2C.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #73df
FIRST_THEME				equ 0
LAST_THEME				equ 6

	read "music_header.asm"

	jp l746d	; init
	jp l74f5	; play
.l73e5
.music_end
	db #00
	jp l73f0	; init sound effect
;
.stop_music
;
	xor a
	ld (l73e5),a
	jp l77ca
.l73f0
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l81cb
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l7710
	call l7746
	set 7,(ix+#11)
	ret
.l741d equ $ + 7
.l7417 equ $ + 1
.l7416
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7425 equ $ + 7
.l7423 equ $ + 5
.l7422 equ $ + 4
.l7421 equ $ + 3
.l7420 equ $ + 2
.l741f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l742c equ $ + 6
.l742b equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l7435 equ $ + 7
.l7434 equ $ + 6
.l7432 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l743a equ $ + 4
.l7438 equ $ + 2
.l7437 equ $ + 1
.l7436
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7441 equ $ + 3
.l7440 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l744d equ $ + 7
.l744c equ $ + 6
.l744b equ $ + 5
.l744a equ $ + 4
.l7449 equ $ + 3
.l7447 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7455 equ $ + 7
.l744f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l746d
;
	push af
	call l77ca
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l7f34
	add l
	ld l,a
	jr nc,l747e
	inc h
.l747e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7417),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l742c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7441),de
	xor a
	ld (l7420),a
	ld (l7435),a
	ld (l744a),a
	ld (l7425),a
	ld (l743a),a
	ld (l744f),a
	cpl
	ld (l7421),a
	ld (l7436),a
	ld (l744b),a
	ld a,#01
	ld (l741f),a
	ld (l7434),a
	ld (l7449),a
	ld (l7422),a
	ld (l7437),a
	ld (l744c),a
	ld hl,l7455
	ld bc,#030a
.l74cd
	xor a
.l74ce
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l74ce
	djnz l74cd
	ld hl,l80cd
	ld (l741d),hl
	ld (l7432),hl
	ld (l7447),hl
	ld a,#ff
	ld (l7423),a
	ld (l7438),a
	ld (l744d),a
	ld (l73e5),a
	ret
;
.play_music
.l74f5
;
	call l7802
	ld a,(l73e5)
	and a
	ret z
	ld a,(l7423)
	or a
	jr z,l750d
	ld a,(l7438)
	or a
	jr z,l750d
	ld a,(l744d)
	or a
.l750d
	ld (l73e5),a
	jr nz,l7520
	ld a,(l770f)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l73e5),a
	ret
.l7520
	ld iy,l7416
	ld ix,l7710
	call l753e
	ld iy,l742b
	ld ix,l7722
	call l753e
	ld iy,l7440
	ld ix,l7734
.l753e
	call l767f
	ld a,(iy+#0b)
	and a
	jr z,l75c3
.l7547
	dec (iy+#09)
	jr z,l755e
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l75c3
.l755e
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l7568
	ld a,(hl)
	cp #80
	jr c,l75a3
	cp #fe
	jr nz,l757a
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l7568
.l757a
	cp #ff
	jr nz,l7583
	xor a
	ld (iy+#0d),a
	ret
.l7583
	cp #c0
	jr nc,l7590
	and #1f
	ld (iy+#09),a
	inc hl
	jp l7568
.l7590
	and #07
	add (iy+#00)
	ld de,l7455
	add e
	ld e,a
	jr nc,l759d
	inc d
.l759d
	inc hl
	ldi
	jp l7568
.l75a3
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l7ede
	add hl,bc
	ld e,(hl)
	ld hl,l7f09
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l75c9
.l75c3
	ld e,(iy+#05)
	ld d,(iy+#06)
.l75c9
	dec (iy+#0c)
	jr z,l75db
	ld a,(de)
	cp #80
	call nc,l7645
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l75db
	ld a,(de)
	cp #80
	jr c,l75ec
	call l7645
	ld a,(iy+#0b)
	and a
	jr z,l75db
	jp l7547
.l75ec
	cp #7f
	jr z,l7638
	cp #7e
	jr nz,l75fd
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l7611
.l75fd
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l79cb
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l7611
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
	jp l7746
.l7638
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l7645
	ld a,(de)
	cp #88
	jr nc,l7663
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l7455
	add hl,bc
	ld c,(hl)
	ld hl,l80cd
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l7663
	cp #ff
	jr nz,l766c
	ld (iy+#0b),#ff
	ret
.l766c
	cp #c0
	jr nc,l7677
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l7677
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l767f
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l7693
	res 7,(iy+#14)
	ret
.l7693
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l76c7
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l76c7
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l76b6
	inc h
	ld (iy+#11),h
.l76b6
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l76fc
.l76c7
	ld hl,l7a83
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l76e1
	bit 6,(iy+#14)
	jr nz,l76e1
	ld (iy+#13),#01
	ret
.l76e1
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
.l76fc
	add a
	ld hl,l79cb
	add l
	ld l,a
	jr nc,l7705
	inc h
.l7705
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l770f
	db #bf
.l7715 equ $ + 5
.l7714 equ $ + 4
.l7713 equ $ + 3
.l7710
	db #fe,#f7,#09,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7727 equ $ + 7
.l7726 equ $ + 6
.l7725 equ $ + 5
.l7722 equ $ + 2
.l7721 equ $ + 1
	db #00,#00,#fd,#ef,#12,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7737 equ $ + 7
.l7734 equ $ + 4
.l7733 equ $ + 3
	db #00,#00,#00,#00,#fb,#df,#24,#00
.l7739 equ $ + 1
.l7738
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7745 equ $ + 5
	db #00,#00,#00,#00,#00,#00
.l7746
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
	jr nz,l776a
	ld a,#01
.l776a
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l770f)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l7793
	and (ix+#00)
.l7793
	bit 1,c
	jr z,l779a
	and (ix+#01)
.l779a
	ld (l770f),a
	bit 2,c
	jr nz,l77ab
	ld hl,l78f8
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l77ab
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call l79b0
	ld a,(iy+#04)
	ld e,#0b
	call l79b0
	inc e
	xor a
	call l79b0
	ld (ix+#05),#ff
	ret
.l77ca
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(l770f)
	or #3f
	ld (l770f),a
	call l79b0
	xor a
	inc e
	call l79b0
	inc e
	call l79b0
	inc e
	call l79b0
	ld a,#01
	inc e
	call l79b0
	inc e
	xor a
	call l79b0
	inc e
	call l79b0
	ld (l7721),a
	ld (l7733),a
	ld (l7745),a
	ret
.l7802
	ld a,(l770f)
	and #3f
	cp #3f
	ret z
	ld ix,l7710
	call l78c6
	ld ix,l7722
	call l78c6
	ld ix,l7734
	call l78c6
	ld ix,l7710
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(l770f)
	call l79b0
	ld e,#00
	ld a,(l7713)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l7840
	ld d,a
.l7840
	call l79b0
	inc e
	ld a,(l7714)
	adc (ix+#0a)
	call l79b0
	inc e
	ld a,(l7725)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l785c
	ld d,a
.l785c
	call l79b0
	inc e
	ld a,(l7726)
	adc (ix+#1c)
	call l79b0
	inc e
	ld a,(l7737)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l7878
	ld d,a
.l7878
	call l79b0
	inc e
	ld a,(l7738)
	adc (ix+#2e)
	call l79b0
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call l79b0
	ld e,#08
	ld a,(l78c5)
	ld d,a
	ld a,(l7715)
	cp d
	jr c,l789a
	ld a,d
.l789a
	srl a
	srl a
	srl a
	call l79b0
	inc e
	ld a,(l7727)
	cp d
	jr c,l78ab
	ld a,d
.l78ab
	srl a
	srl a
	srl a
	call l79b0
	inc e
	ld a,(l7739)
	cp d
	jr c,l78bc
	ld a,d
.l78bc
	srl a
	srl a
	srl a
	jp l79b0
.l78c5
	ld a,a
.l78c6
	ld a,(l770f)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l78e7
	cp #ff
	jr z,l78e7
	dec (ix+#06)
.l78e7
	call l796e
	bit 2,(iy+#09)
	jp nz,l7967
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l78f8
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l7907
	ld (ix+#05),a
	ret
.l7907
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l7917
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7917
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l7929
	cp (iy+#02)
	jr c,l7929
	ld (ix+#05),a
	ret
.l7929
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l7939
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7939
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l7948
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7948
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l7955
	ld (ix+#05),a
	ret
.l7955
	ld (ix+#05),#00
	ld a,(l770f)
	or (ix+#02)
	ld (l770f),a
	res 7,(ix+#11)
	ret
.l7967
	ld a,(ix+#06)
	and a
	ret nz
	jr l7955
.l796e
	ld a,(ix+#07)
	and a
	jr z,l797b
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l797b
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
	jp p,l799f
	ld (ix+#07),#ff
	ret
.l799f
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
.l79b0
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
.l79cb
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
.l7a5e equ $ + 1
	db #00,#85,#0e,#0e,#0e,#07,#15,#15
	db #15,#07,#13,#07,#15,#07,#17,#07
	db #15,#07,#13,#07,#0e,#0e,#0e,#07
	db #15,#15,#15,#07,#13,#07,#15,#07
	db #17,#07,#15,#07,#13,#07
.l7a83
	db #15,#0e,#15,#07,#15,#07,#15,#07
	db #15,#07,#15,#0e,#15,#07,#15,#07
.l7a9a equ $ + 7
	db #15,#07,#15,#07,#07,#46,#ff,#85
	db #7f,#2a,#1a,#07,#18,#07,#1a,#07
	db #1c,#07,#1a,#07,#18,#07,#1a,#2a
	db #1a,#07,#18,#07,#1a,#07,#1c,#07
	db #1a,#07,#18,#07,#1a,#0e,#1a,#07
	db #1a,#07,#1a,#07,#1a,#07,#1a,#0e
	db #1a,#07,#1a,#07,#1a,#07,#1a,#07
.l7ace equ $ + 3
	db #17,#46,#ff,#85,#7f,#54,#1a,#15
	db #15,#15,#0e,#2a,#0e,#0e,#0c,#0e
	db #09,#0e,#0c,#0e,#09,#0e,#07,#0e
.l7ae6 equ $ + 3
	db #13,#46,#ff,#85,#15,#05,#1a,#05
	db #1c,#05,#1a,#05,#15,#0a,#15,#05
	db #15,#05,#17,#05,#1c,#05,#12,#05
	db #1c,#05,#17,#14,#18,#05,#11,#05
	db #18,#05,#13,#05,#18,#14,#1a,#05
	db #1a,#05,#15,#05,#1a,#05,#0e,#14
.l7b16 equ $ + 3
	db #15,#32,#ff,#85,#09,#1e,#09,#0a
	db #0b,#14,#0b,#14,#0c,#1e,#08,#05
	db #09,#05,#0a,#05,#0b,#05,#0c,#05
	db #0d,#05,#0e,#05,#0f,#05,#10,#05
.l7b38 equ $ + 5
	db #11,#05,#12,#32,#ff,#85,#15,#0a
	db #1a,#05,#1a,#0a,#1a,#05,#1a,#0a
	db #17,#0a,#1c,#05,#1c,#0a,#1c,#05
	db #1c,#0a,#18,#0a,#1d,#05,#1d,#0a
	db #1d,#05,#1d,#05,#1a,#0a,#1a,#05
	db #1a,#0a,#1a,#05,#1a,#0a,#0e,#32
.l7b64 equ $ + 1
	db #ff,#85,#15,#05,#15,#05,#15,#05
	db #1c,#1e,#10,#0f,#15,#05,#15,#05
.l7b78 equ $ + 5
	db #15,#05,#1c,#32,#ff,#85,#10,#05
	db #10,#05,#10,#05,#15,#0f,#10,#05
	db #10,#05,#10,#05,#15,#0f,#10,#05
.l7b92 equ $ + 7
	db #10,#05,#10,#05,#15,#32,#ff,#85
	db #7f,#0f,#09,#1e,#10,#1e,#09,#32
.l7b9c equ $ + 1
	db #ff,#85,#09,#05,#09,#05,#09,#05
	db #10,#1e,#10,#0f,#19,#05,#19,#05
.l7bb0 equ $ + 5
	db #19,#05,#15,#32,#ff,#85,#7f,#1e
	db #0e,#05,#0e,#05,#0e,#05,#14,#0f
	db #1c,#05,#1c,#05,#1c,#05,#25,#32
.l7bc4 equ $ + 1
	db #ff,#85,#7f,#0f,#09,#1e,#10,#1e
.l7bce equ $ + 3
	db #09,#32,#ff,#85,#18,#0f,#15,#05
	db #15,#0a,#15,#0a,#11,#0a,#0c,#0a
.l7be2 equ $ + 7
	db #0c,#0a,#0c,#0a,#11,#32,#ff,#85
	db #1d,#0f,#18,#05,#18,#0a,#18,#0a
	db #15,#0a,#11,#0a,#11,#0a,#11,#0a
.l7bf6 equ $ + 3
	db #18,#32,#ff,#85,#11,#14,#10,#14
.l7c02 equ $ + 7
	db #0e,#14,#0c,#14,#11,#32,#ff,#85
	db #12,#0e,#12,#07,#1a,#3f,#0e,#54
	db #0f,#54,#0c,#46,#0c,#07,#0c,#07
	db #0c,#07,#0e,#46,#0e,#07,#0e,#07
	db #0e,#07,#0f,#15,#18,#15,#0f,#15
	db #11,#15,#17,#23,#17,#07,#17,#07
.l7c2e equ $ + 3
	db #17,#23,#ff,#85,#0e,#0e,#0e,#07
	db #15,#1c,#13,#07,#15,#07,#17,#07
	db #15,#07,#13,#07,#16,#31,#13,#07
	db #15,#07,#16,#07,#15,#07,#13,#07
	db #18,#07,#16,#07,#14,#07,#0f,#1c
	db #0e,#07,#0f,#07,#0e,#07,#0c,#07
	db #08,#07,#07,#5b,#09,#5b,#0a,#15
	db #0c,#15,#0a,#15,#09,#15,#07,#23
.l7c72 equ $ + 7
	db #13,#07,#13,#07,#13,#23,#ff,#85
	db #0e,#15,#0d,#15,#0b,#15,#09,#15
	db #07,#54,#08,#54,#0c,#5b,#1a,#5b
	db #1b,#15,#09,#15,#16,#15,#0c,#15
	db #13,#23,#07,#07,#07,#07,#07,#23
.l7c94 equ $ + 1
	db #ff,#80,#13,#06,#13,#06,#11,#06
	db #13,#0c,#11,#0c,#13,#0c,#11,#06
	db #13,#06,#11,#06,#16,#06,#16,#06
	db #18,#06,#11,#06,#13,#06,#13,#06
	db #11,#06,#13,#0c,#11,#0c,#13,#0c
	db #13,#06,#1a,#06,#13,#06,#19,#06
.l7cca equ $ + 7
	db #13,#06,#16,#06,#11,#06,#ff,#80
.l7cce equ $ + 3
	db #13,#c0,#ff,#84,#12,#06,#87,#12
	db #06,#1e,#06,#12,#06,#81,#1e,#06
	db #87,#1e,#06,#12,#06,#84,#12,#06
	db #87,#12,#06,#1e,#06,#84,#12,#06
	db #87,#1e,#06,#81,#1e,#06,#87,#1e
.l7cf9 equ $ + 6
	db #06,#12,#06,#1e,#06,#ff,#80,#11
	db #06,#13,#06,#13,#06,#11,#06,#18
	db #06,#1a,#06,#13,#0c,#18,#0c,#13
	db #06,#16,#0c,#13,#06,#11,#0c,#13
	db #0c,#13,#0c,#18,#06,#1a,#06,#13
	db #0c,#18,#06,#16,#06,#13,#0c,#16
	db #0c,#13,#06,#11,#06,#11,#0c,#11
	db #0c,#16,#06,#18,#06,#11,#0c,#16
	db #0c,#15,#06,#16,#0c,#15,#06,#13
	db #06,#11,#06,#0f,#0c,#0f,#0c,#15
	db #06,#16,#06,#0f,#0c,#18,#0c,#13
	db #06,#16,#0c,#13,#06,#11,#06,#0e
.l7d55 equ $ + 2
	db #06,#ff,#80,#90,#7f,#0c,#23,#06
	db #23,#06,#28,#06,#23,#06,#28,#06
	db #2a,#12,#23,#06,#23,#06,#28,#06
	db #2a,#06,#21,#0c,#23,#0c,#91,#23
	db #0c,#23,#06,#21,#06,#1e,#06,#23
	db #2a,#90,#23,#06,#22,#06,#21,#0c
	db #21,#0c,#26,#06,#25,#0c,#28,#0c
	db #26,#06,#25,#06,#21,#06,#25,#06
	db #26,#06,#25,#06,#21,#06,#1f,#60
.l7d9c equ $ + 1
	db #ff,#80,#0f,#0c,#1b,#0c,#1b,#0c
	db #0f,#06,#0f,#06,#1b,#0c,#0f,#06
	db #1b,#0c,#0f,#06,#1a,#06,#1b,#06
	db #0e,#0c,#1a,#0c,#1a,#0c,#0e,#06
	db #0e,#06,#1a,#0c,#0e,#06,#1a,#0c
	db #0e,#06,#18,#06,#1a,#06,#13,#0c
	db #1f,#0c,#1f,#0c,#13,#06,#13,#06
	db #1f,#0c,#13,#06,#1f,#0c,#13,#06
	db #1d,#06,#1f,#06,#13,#0c,#1f,#0c
	db #11,#0c,#1d,#0c,#0f,#0c,#1b,#0c
.l7df0 equ $ + 5
	db #0e,#0c,#1a,#0c,#ff,#85,#7f,#24
	db #17,#0c,#19,#18,#1a,#18,#19,#0c
	db #17,#18,#16,#24,#12,#18,#80,#91
	db #17,#06,#1a,#06,#17,#06,#15,#06
	db #1c,#06,#17,#06,#1c,#06,#1e,#36
	db #17,#06,#1a,#06,#17,#06,#15,#06
	db #1c,#06,#17,#06,#1c,#06,#1e,#06
	db #90,#23,#06,#21,#06,#1e,#06,#1c
	db #06,#21,#06,#1e,#06,#1c,#06,#1a
.l7e35 equ $ + 2
	db #06,#ff,#80,#1f,#0c,#23,#0c,#23
	db #0c,#25,#0c,#26,#06,#25,#06,#23
	db #0c,#25,#06,#23,#06,#21,#0c,#23
	db #06,#21,#06,#1e,#0c,#21,#06,#1e
	db #06,#1c,#0c,#1e,#06,#1c,#06,#1a
	db #0c,#1c,#06,#1a,#06,#17,#06,#15
.l7e67 equ $ + 4
	db #06,#17,#c0,#ff,#82,#12,#a0,#ff
.l7e6f equ $ + 4
.l7e6b
	db #83,#1e,#23,#ff,#80,#15,#03,#17
.l7e75 equ $ + 2
	db #03,#ff,#80,#0d,#03,#0f,#03,#ff
.l7e81 equ $ + 6
.l7e7b
	db #91,#80,#25,#07,#90,#ff,#84,#1e
.l7e89 equ $ + 6
.l7e85 equ $ + 2
	db #05,#ff,#80,#06,#05,#ff,#83,#12
	db #03,#13,#03,#14,#03,#15,#03,#16
	db #03,#17,#03,#18,#03,#19,#03,#1a
	db #03,#1b,#03,#1c,#03,#1d,#03,#1e
.l7ea9 equ $ + 6
.l7ea5 equ $ + 2
	db #03,#ff,#86,#2a,#03,#ff,#86,#35
.l7eb1 equ $ + 6
	db #03,#35,#03,#35,#03,#ff,#86,#06
	db #03,#06,#03,#06,#03,#06,#03,#06
.l7ec1 equ $ + 6
.l7ebd equ $ + 2
	db #03,#ff,#85,#06,#46,#ff,#86,#0d
	db #02,#0b,#02,#0a,#02,#08,#02,#ff
.l7ecf equ $ + 4
.l7ecb
	db #80,#12,#e0,#ff,#85,#06,#e0,#ff
.l7eda equ $ + 7
.l7ed3
	db #84,#06,#07,#87,#1e,#15,#ff,#84
	db #06,#1c,#ff
.l7ede
	db l7a5e,l7a9a,l7ace,l7ae6
	db l7b16,l7b38,l7b64,l7b78
	db l7b92,l7b9c,l7bb0,l7bc4
	db l7bce,l7be2,l7bf6,l7c02
	db l7c2e,l7c72,l7c94,l7cca
	db l7cce,l7cf9,l7d55,l7d9c
	db l7df0,l7e35,l7e67,l7e6b
	db l7e6f,l7e7b,l7e75,l7e81
	db l7e85,l7e89,l7ea5,l7ea9
	db l7eb1,l7ebd,l7ec1,l7ecb
	db l7ecf,l7ed3,l7eda
;	db #5e,#9a,#ce,#e6,#16,#38,#64,#78
;	db #92,#9c,#b0,#c4,#ce,#e2,#f6,#02
;	db #2e,#72,#94,#ca,#ce,#f9,#55,#9c
;	db #f0,#35,#67,#6b,#6f,#7b,#75,#81
;	db #85,#89,#a5,#a9,#b1,#bd,#c1,#cb
;	db #cf,#d3,#da
.l7f09
	db l7a5e/&100,l7a9a/&100,l7ace/&100,l7ae6/&100
	db l7b16/&100,l7b38/&100,l7b64/&100,l7b78/&100
	db l7b92/&100,l7b9c/&100,l7bb0/&100,l7bc4/&100
	db l7bce/&100,l7be2/&100,l7bf6/&100,l7c02/&100
	db l7c2e/&100,l7c72/&100,l7c94/&100,l7cca/&100
	db l7cce/&100,l7cf9/&100,l7d55/&100,l7d9c/&100
	db l7df0/&100,l7e35/&100,l7e67/&100,l7e6b/&100
	db l7e6f/&100,l7e7b/&100,l7e75/&100,l7e81/&100
	db l7e85/&100,l7e89/&100,l7ea5/&100,l7ea9/&100
	db l7eb1/&100,l7ebd/&100,l7ec1/&100,l7ecb/&100
	db l7ecf/&100,l7ed3/&100,l7eda/&100
;	db #7a,#7a,#7a,#7a,#7b,#7b,#7b,#7b
;	db #7b,#7b,#7b,#7b,#7b,#7b,#7b,#7c
;	db #7c,#7c,#7c,#7c,#7c,#7c,#7d,#7d
;	db #7d,#7e,#7e,#7e,#7e,#7e,#7e,#7e
;	db #7e,#7e,#7e,#7e,#7e,#7e,#7e,#7e
;	db #7e,#7e,#7e
.l7f34
	dw l7fb2,l7fb6,l7fba
	dw l7fbe,l7fc2,l7fc6
	dw l7fca,l7fce,l7fd2
	dw l7fd6,l7fda,l7fde
	dw l7fe2,l7fe6,l7fea
	dw l7fee,l7ff2,l7ff6
	dw l7ffa,l8009,l8012
	dw l802b,l802f,l8033
	dw l8037,l803b,l803c
	dw l803d,l8041,l8045
	dw l8046,l804a,l804b
	dw l804c,l8050,l8054
	dw l8055,l8062,l8063
	dw l8064,l8068,l8069
	dw l806a,l806f,l8074
	dw l8075,l807a,l807e
	dw l8082,l8092,l8093
	dw l8094,l809a,l80a0
	dw l80a1,l80a5,l80a9
	dw l80ad,l80b2,l80b8
	dw l80be,l80c3,s00	; db &94,&01
.l7fb6 equ $ + 4
.l7fb2
	db #fe,#05,#00,#ff,#fe,#05
.l7fbe equ $ + 6
.l7fba equ $ + 2
	db #01,#ff,#fe,#05,#02,#ff,#fe,#05
.l7fc6 equ $ + 6
.l7fc2 equ $ + 2
	db #03,#ff,#fe,#05,#04,#ff,#fe,#05
.l7fce equ $ + 6
.l7fca equ $ + 2
	db #05,#ff,#fe,#05,#06,#ff,#fe,#05
.l7fd6 equ $ + 6
.l7fd2 equ $ + 2
	db #07,#ff,#fe,#05,#08,#ff,#fe,#05
.l7fde equ $ + 6
.l7fda equ $ + 2
	db #09,#ff,#fe,#05,#0a,#ff,#fe,#05
.l7fe6 equ $ + 6
.l7fe2 equ $ + 2
	db #0b,#ff,#fe,#05,#0c,#ff,#fe,#05
.l7fee equ $ + 6
.l7fea equ $ + 2
	db #0d,#ff,#fe,#05,#0e,#ff,#fe,#05
.l7ff6 equ $ + 6
.l7ff2 equ $ + 2
	db #0f,#ff,#fe,#05,#10,#ff,#fe,#05
.l7ffa equ $ + 2
	db #11,#ff,#fe,#f7,#82,#13,#82,#12
	db #82,#15,#82,#17,#84,#15,#82,#17
.l8009 equ $ + 1
	db #ff,#fe,#05,#90,#14,#90,#14,#90
.l8012 equ $ + 2
	db #14,#ff,#fe,#03,#84,#13,#fe,#ff
	db #82,#16,#fe,#0b,#18,#19,#fe,#ff
	db #82,#16,#fe,#03,#84,#12,#fe,#0b
.l802f equ $ + 7
.l802b equ $ + 3
	db #18,#19,#ff,#fe,#00,#1a,#ff,#fe
.l8037 equ $ + 7
.l8033 equ $ + 3
	db #03,#1a,#ff,#fe,#05,#1a,#ff,#fe
.l803d equ $ + 5
.l803c equ $ + 4
.l803b equ $ + 3
	db #00,#1b,#ff,#ff,#ff,#fe,#00,#1c
.l8046 equ $ + 6
.l8045 equ $ + 5
.l8041 equ $ + 1
	db #ff,#fe,#00,#1e,#ff,#ff,#fe,#00
.l804c equ $ + 4
.l804b equ $ + 3
.l804a equ $ + 2
	db #1d,#ff,#ff,#ff,#fe,#00,#1f,#ff
.l8055 equ $ + 5
.l8054 equ $ + 4
.l8050
	db #fe,#00,#20,#ff,#ff,#fe,#f6,#21
	db #fe,#02,#21,#fe,#0e,#21,#fe,#2e
.l8064 equ $ + 4
.l8063 equ $ + 3
.l8062 equ $ + 2
	db #21,#ff,#ff,#ff,#fe,#00,#22,#ff
.l806f equ $ + 7
.l806a equ $ + 2
.l8069 equ $ + 1
.l8068
	db #ff,#ff,#fe,#00,#84,#23,#ff,#fe
.l8075 equ $ + 5
.l8074 equ $ + 4
	db #01,#84,#23,#ff,#ff,#fe,#00,#87
.l807e equ $ + 6
.l807a equ $ + 2
	db #24,#ff,#fe,#01,#25,#ff,#fe,#02
.l8082 equ $ + 2
	db #25,#ff,#fe,#0a,#26,#fe,#0c,#26
	db #fe,#0e,#26,#fe,#10,#26,#fe,#12
.l8094 equ $ + 4
.l8093 equ $ + 3
.l8092 equ $ + 2
	db #26,#ff,#ff,#ff,#fe,#00,#c0,#50
.l809a equ $ + 2
	db #27,#ff,#fe,#05,#c0,#50,#27,#ff
.l80a5 equ $ + 5
.l80a1 equ $ + 1
.l80a0
	db #ff,#fe,#00,#1b,#ff,#fe,#14,#20
.l80ad equ $ + 5
.l80a9 equ $ + 1
	db #ff,#fe,#18,#20,#ff,#fe,#00,#8a
.l80b2 equ $ + 2
	db #24,#ff,#fe,#0c,#c0,#50,#27,#ff
.l80be equ $ + 6
.l80b8
	db #fe,#05,#c0,#50,#27,#ff,#fe,#00
.l80c3 equ $ + 3
	db #83,#29,#ff,#fe,#03,#83,#2a,#ff
.s00
	db #fe,#05,#83,#2a,#ff
.l80cd
	db #7f,#fc,#00,#ff,#7f,#00,#01,#01
	db #00,#01,#7f,#f6,#00,#ff,#7f,#00
	db #01,#02,#01,#03,#7f,#ff,#00,#fc
	db #7f,#00,#03,#05,#01,#03,#7f,#fe
	db #00,#fe,#7f,#00,#04,#04,#02,#03
	db #7f,#f8,#00,#ff,#7f,#00,#00,#00
	db #01,#01,#46,#fe,#69,#ff,#7f,#00
	db #01,#02,#00,#01,#7f,#f6,#00,#ff
	db #7f,#00,#00,#00,#00,#01,#7f,#ec
	db #00,#ff,#6e,#00,#01,#02,#03,#03
	db #03,#00,#00,#ff,#64,#00,#02,#02
	db #03,#03,#0a,#ff,#63,#ff,#7f,#00
	db #03,#01,#03,#03,#7f,#fa,#50,#ff
	db #7f,#00,#03,#01,#00,#01,#7f,#fa
	db #50,#ff,#7f,#00,#03,#01,#00,#01
	db #7f,#fa,#50,#ff,#7f,#00,#03,#01
	db #00,#01,#7f,#fa,#50,#ff,#7f,#00
	db #03,#01,#00,#01,#7f,#fa,#50,#ff
	db #7f,#00,#03,#01,#00,#01,#7f,#fa
	db #50,#ff,#7f,#00,#03,#01,#00,#01
	db #7f,#fa,#50,#ff,#7f,#00,#03,#01
	db #00,#01,#7f,#fa,#50,#ff,#7f,#00
	db #03,#01,#00,#01,#7f,#fa,#50,#ff
	db #7f,#00,#03,#01,#00,#01,#89,#61
	db #00,#00,#00,#00,#00,#00,#89,#21
	db #00,#00,#00,#00,#00,#00,#91,#1a
	db #00,#00,#00,#00,#00,#00,#91,#22
	db #00,#00,#00,#00,#00,#00,#89,#21
	db #00,#00,#00,#00,#00,#00,#89,#19
	db #00,#00,#00,#00,#00,#00,#89,#29
	db #00,#00,#00,#00,#00,#00,#89,#49
	db #00,#00,#00,#00,#00,#00
.l81cb
	db #0e,#fe,#01,#ff,#7f,#00,#04,#11
	db #00,#01,#53,#00,#28,#7f,#fc,#01
	db #ff,#7f,#00,#00,#1b,#00,#03,#07
	db #00,#14,#7f,#f5,#01,#ff,#7f,#00
	db #00,#5c,#00,#03,#96,#01,#0a,#7f
	db #fe,#01,#ff,#7f,#05,#04,#02,#00
	db #01,#68,#00,#28,#00,#00,#00,#00
	db #00

; play &74f5
;
; #1fc5
:
; ld a,#06		; a=theme number
; call #746d	; init
;
.music_info
	db "Cyberball - Footballer in the 21st Century (1990)(Domark)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
