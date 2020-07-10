; Music of Flimbo's Quest (1990)(System 3)()()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FLIMBOSQ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0480
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music	; theme a=0 (same as main theme but played slower),1 (main theme),2,3 (same but play slow)
;
	push af
	call l06c3
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l1192
	add hl,bc
	ld a,(hl)
	ld (l056e),a
	ld (l09cb),a
	inc hl
	ld ix,l04ed
	ld c,#22
	ld a,#03
.l04a1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
	ld hl,l0ab5
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
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
	jr nz,l04a1
	ld (l08e5),a
	dec a
	ld (l09cc),a
	ld (l09c6),a
	ret
.l04ed
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l050f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l0531
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l09c6)
	ld hl,l09c7
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call l0cc0
	ld a,(l09c6)
	and a
	jr z,l05b9
.l0569 equ $ + 1
	ld a,#00
	ld (l05b5),a
.l056e equ $ + 1
	ld a,#01
	ld hl,l09cc
	add (hl)
	ld (hl),a
	jr nc,l058d
	ld b,#00
	ld ix,l04ed
	call l07ed
	ld ix,l050f
	call l07ed
	ld ix,l0531
	call l07ed
.l058d
	ld ix,l04ed
	call l08b2
	ld (l09cd),hl
	ld (l09d5),a
	ld ix,l050f
	call l08b2
	ld (l09cf),hl
	ld (l09d6),a
	ld ix,l0531
	call l08b2
	ld (l09d1),hl
	ld (l09d7),a
.l05b5 equ $ + 1
	ld a,#00
	ld (l09d3),a
.l05b9
	ld a,(l09c6)
	and a
	jr nz,l05cf
	ld (l09d5),a
	ld (l09d6),a
	ld (l09d7),a
	ld a,#3f
	ld (l09d4),a
	jr l05f7
.l05cf
	ld a,(l09ca)
	and #0f
	xor #0f
	jr z,l05f7
	ld b,a
	ld a,(l09d5)
	sub b
	jr nc,l05e0
	xor a
.l05e0
	ld (l09d5),a
	ld a,(l09d6)
	sub b
	jr nc,l05ea
	xor a
.l05ea
	ld (l09d6),a
	ld a,(l09d7)
	sub b
	jr nc,l05f4
	xor a
.l05f4
	ld (l09d7),a
.l05f7
	ld a,(l09c7)
	and a
	jr z,l061f
	ld hl,(l09da)
	ld (l09cd),hl
	ld a,(l113a)
	ld b,a
	bit 3,a
	jr nz,l0611
	ld a,(l09e0)
	ld (l09d3),a
.l0611
	ld hl,l09d4
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l09e2)
	ld (l09d5),a
.l061f
	ld a,(l09c8)
	and a
	jr z,l0649
	ld hl,(l09dc)
	ld (l09cf),hl
	ld a,(l114f)
	ld b,a
	bit 3,a
	jr nz,l0639
	ld a,(l09e0)
	ld (l09d3),a
.l0639
	ld hl,l09d4
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l09e3)
	ld (l09d6),a
.l0649
	ld a,(l09c9)
	and a
	jr z,l0675
	ld hl,(l09de)
	ld (l09d1),hl
	ld a,(l1164)
	ld b,a
	bit 3,a
	jr nz,l0663
	ld a,(l09e0)
	ld (l09d3),a
.l0663
	ld hl,l09d4
	ld a,(hl)
.l0667
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(l09e4)
	ld (l09d7),a
.l0675
	ld hl,l09d7
	ld d,#0a
.l067a
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
	jp p,l067a
	ret
.l069b
	ld de,&0d00	;&0a00
.l069e
	call l06a8
	dec d
	jp p,l069e
	ld de,&073f
.l06a8
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
.stop_music
.l06c3
;
	xor a
	ld (l09c6),a
	call l06da
	xor a
	ld (l09d5),a
	ld (l09d6),a
	ld (l09d7),a
	ld a,#0f
	ld (l09ca),a
	ret
.l06da
	xor a
	ld (l09c7),a
	ld (l09c8),a
	ld (l09c9),a
	jp l069b
	db #f0,#de,#d7,#e1,#a4,#00,#00,#3b
	db #c4,#b5,#7a,#64,#8c,#dd,#30,#ea
	db #eb,#f0,#b3,#13,#0a,#01,#1a,#13
	ld (l09ca),a
	jp l07fa
	ld a,(de)
	inc de
	ld (l056e),a
	jp l07fa
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp l07fa
	pop hl
	jp l06c3
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
	jr nz,l074b
.l073f
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l074b
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l07fa
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l0991
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l07fa
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l0991
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l07fa
	ld hl,l0991
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l07fa
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l07fa
	ld a,(de)
	inc de
	ld (l08e5),a
	jr l07fa
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l07fa
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l07fa
	ld (ix+#1d),b
	jr l07fa
	ld (ix+#1d),#c0
	jr l07fa
	set 1,(ix+#00)
	jr l07fa
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0829
	jr l0825
	ld (ix+#1f),#ff
	jr l07fa
	ld (ix+#1f),b
	jr l07fa
.l07ed
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l07fa
	ld a,(de)
	inc de
	and a
	jp m,l0867
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l080c
	ld (l0569),a
.l080c
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l0825
	set 5,(ix+#00)
.l0829
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l0866
	ld a,(l09c7)
	and a
	jr z,l0848
	ld a,(l113a)
	bit 3,a
	jr z,l0866
.l0848
	ld a,(l09c8)
	and a
	jr z,l0855
	ld a,(l114f)
	bit 3,a
	jr z,l0866
.l0855
	ld a,(l09c9)
	and a
	jr z,l0862
	ld a,(l1164)
	bit 3,a
	jr z,l0866
.l0862
	ld (ix+#1f),#ff
.l0866
	ret
.l0867
	cp #c0
	jr c,l08aa
	add #20
	jr c,l088b
	add #10
	jr c,l0892
	add #10
	ld c,a
	ld hl,l0aa6
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l07fa
.l088b
	inc a
	ld (ix+#11),a
	jp l07fa
.l0892
	ld hl,l0ae0
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l07fa
.l08aa
	ld hl,l0667
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l08b2
	ld c,(ix+#00)
	bit 5,c
	jr z,l08e4
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l08de
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l08de
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l08de
	ld a,(ix+#18)
	ld (ix+#13),a
.l08e5 equ $ + 1
.l08e4
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l0901
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l0901
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l09e6
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0962
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l092b
	bit 0,c
	jr nz,l0949
.l092b
	bit 5,l
	jr nz,l093b
	sub (ix+#1b)
	jr nc,l0946
	set 5,(ix+#1d)
	sub a
	jr l0946
.l093b
	add (ix+#1b)
	cp b
	jr c,l0946
	res 5,(ix+#1d)
	ld a,b
.l0946
	ld (ix+#1c),a
.l0949
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0954
	dec d
.l0954
	add #a0
	jr c,l0960
.l0958
	sla e
	rl d
	add #18
	jr nc,l0958
.l0960
	add hl,de
	ex de,hl
.l0962
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l098d
	ld b,(ix+#0e)
	djnz l098a
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0979
	dec b
.l0979
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l098d
.l098a
	ld (ix+#0e),b
.l098d
	cpl
	and #03
.l0991 equ $ + 1
	ld a,#38
	jr nz,l099e
	ld a,(l0569)
	xor #08
	ld (l05b5),a
	ld a,#07
.l099e
	ld hl,l09d4
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l09c1
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l05b5),a
.l09c1
	ex de,hl
	ld a,(ix+#13)
	ret
.l09cd equ $ + 7
.l09cc equ $ + 6
.l09cb equ $ + 5
.l09ca equ $ + 4
.l09c9 equ $ + 3
.l09c8 equ $ + 2
.l09c7 equ $ + 1
.l09c6
.music_end
	db #00,#00,#00,#00,#00,#00,#00,#00
.l09d5 equ $ + 7
.l09d4 equ $ + 6
.l09d3 equ $ + 5
.l09d1 equ $ + 3
.l09cf equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#0f
.l09dd equ $ + 7
.l09dc equ $ + 6
.l09db equ $ + 5
.l09da equ $ + 4
.l09d7 equ $ + 1
.l09d6
	db #0f,#0f,#00,#00,#00,#00,#00,#00
.l09e4 equ $ + 6
.l09e3 equ $ + 5
.l09e2 equ $ + 4
.l09e0 equ $ + 2
.l09df equ $ + 1
.l09de
	db #00,#00,#00,#3f,#00,#00,#00,#00
.l09e6
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
.l0a00 equ $ + 2
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l0aa6
	db #0f,#0f,#11,#13,#15,#17,#19,#1b
.l0ab5 equ $ + 7
	db #1d,#1f,#20,#21,#22,#23,#24,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#04,#8a,#07,#0c,#8f,#07
	db #0c,#90,#03,#07,#8c,#04,#07,#8c
	db #00,#8c,#00,#83,#00,#84,#00,#85
	db #00,#87,#0c,#00,#00,#00,#00,#00
	db #00,#80
.l0ae0
	dw l0b01,l0b09,l0b10,l0b22
	dw l0b34,l0b39,l0b3e,l0b45
	dw l0b4e,l0b5f,l0b69,l0b73
	dw l0b7d,l0b8e,l0b9e,l0ba1
.l0b01 equ $ + 1
	db #01,#0e,#0c,#09,#05,#03,#01,#87
.l0b09 equ $ + 1
	db #01,#0d,#0b,#07,#02,#01,#87,#01
.l0b10
	db #0f,#0e,#0d,#0b,#0d,#0c,#0a,#09
	db #0b,#0a,#08,#07,#09,#08,#06,#05
.l0b22 equ $ + 2
	db #87,#01,#0f,#0f,#0d,#0b,#0d,#0c
	db #0a,#09,#0b,#0a,#08,#07,#09,#08
.l0b34 equ $ + 4
	db #06,#05,#87,#01,#0f,#0e,#0d,#87
.l0b3e equ $ + 6
.l0b39 equ $ + 1
	db #01,#0f,#0e,#0c,#87,#01,#0f,#0e
.l0b45 equ $ + 5
	db #0d,#0c,#0b,#87,#02,#0e,#0d,#0c
.l0b4e equ $ + 6
	db #0b,#0a,#09,#08,#87,#08,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l0b5f equ $ + 7
	db #05,#04,#03,#02,#01,#87,#02,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#87
.l0b69 equ $ + 1
	db #04,#0f,#0e,#0d,#0c,#0b,#0a,#09
.l0b73 equ $ + 3
	db #08,#87,#03,#0f,#0e,#0d,#0c,#0b
.l0b7d equ $ + 5
	db #0a,#09,#08,#87,#01,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l0b8e equ $ + 6
	db #04,#03,#02,#01,#87,#01,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l0b9e equ $ + 6
	db #04,#03,#02,#01,#87,#01,#0f,#87
.l0ba1 equ $ + 1
	db #01,#0d,#87
	ld hl,l0bac
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0bac
	inc bc
	ld e,l
	or a
	ld hl,l09c7
	ld (hl),#00
	ld hl,l0eec
	add a
	add l
	ld l,a
	jr nc,l0bbd
	inc h
.l0bbd
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l1134
.l0bc5
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0bc5
	ld a,(l1135)
	ld (l1142),a
	ld hl,(l1136)
	ld (l09da),hl
	ld a,(l113a)
	bit 3,a
	jr nz,l0be2
	ld a,l
	ld (l09e0),a
.l0be2
	ld a,(l113f)
	ld (l1143),a
	ld a,(l1141)
	ld (l1148),a
	ld a,(l113e)
	ld hl,l108c
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l1144),hl
	ld (l1146),hl
	ld a,(hl)
	ld (l09e2),a
	ld hl,l09c7
	inc (hl)
	ret
	ld hl,l09c8
	ld (hl),#00
	ld hl,l0eec
	add a
	add l
	ld l,a
	jr nc,l0c18
	inc h
.l0c18
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l1149
.l0c20
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0c20
	ld a,(l114a)
	ld (l1157),a
	ld hl,(l114b)
	ld (l09dc),hl
	ld a,(l114f)
	bit 3,a
	jr nz,l0c3d
	ld a,l
	ld (l09e0),a
.l0c3d
	ld a,(l1154)
	ld (l1158),a
	ld a,(l1156)
	ld (l115d),a
	ld a,(l1153)
	ld hl,l108c
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l1159),hl
	ld (l115b),hl
	ld a,(hl)
	ld (l09e3),a
	ld hl,l09c8
	inc (hl)
	ret
	ld hl,l09c9
	ld (hl),#00
	ld hl,l0eec
	add a
	add l
	ld l,a
	jr nc,l0c73
	inc h
.l0c73
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l115e
.l0c7b
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0c7b
	ld a,(l115f)
	ld (l116c),a
	ld hl,(l1160)
	ld (l09de),hl
	ld a,(l1164)
	bit 3,a
	jr nz,l0c98
	ld a,l
	ld (l09e0),a
.l0c98
	ld a,(l1169)
	ld (l116d),a
	ld a,(l116b)
	ld (l1172),a
	ld a,(l1168)
	ld hl,l108c
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l116e),hl
	ld (l1170),hl
	ld a,(hl)
	ld (l09e4),a
	ld hl,l09c9
	inc (hl)
	ret
.l0cc0
	call l1173
	ld a,(l09c7)
	and a
	call nz,l0d88
	ld a,(l09c8)
	and a
	call nz,l0e3a
	ld a,(l09c9)
	and a
	ret z
	ld a,(l115e)
	and a
	jr nz,l0ce6
	ld a,(l116a)
	and a
	jr nz,l0ce6
	ld (l09c9),a
	ret
.l0ce6
	dec a
	ld (l115e),a
	ld a,(l116c)
	and a
	jr nz,l0d1e
	ld a,(l116a)
	and a
	jr nz,l0cfc
	ld a,(l1167)
	and a
	jr z,l0d60
.l0cfc
	dec a
	ld (l1167),a
	ld a,(l115f)
	ld (l116c),a
	ld a,(l1165)
	and a
	jr z,l0d0f
	ld a,(l1190)
.l0d0f
	ld b,a
	ld a,(l1160)
	add b
	ld (l09de),a
	ld a,(l1161)
	add b
	ld (l09df),a
.l0d1e
	ld hl,l116c
	dec (hl)
	ld hl,l116b
	ld a,(hl)
	and a
	jr z,l0d30
	ld hl,l1172
	dec (hl)
	jr nz,l0d53
	ld (hl),a
.l0d30
	ld a,(l1166)
	and a
	jr z,l0d53
	jp p,l0d46
	ld hl,(l09de)
	ld de,(l1162)
	add hl,de
	ld (l09de),hl
	jr l0d53
.l0d46
	ld hl,(l09de)
	ld de,(l1162)
	and a
	sbc hl,de
	ld (l09de),hl
.l0d53
	ld a,(l1164)
	bit 3,a
	jr nz,l0d60
	ld a,(l09de)
	ld (l09e0),a
.l0d60
	ld a,(l116d)
	dec a
	ld (l116d),a
	jr nz,l0d87
	ld a,(l1169)
	ld (l116d),a
	ld hl,(l1170)
	ld a,(hl)
	inc hl
	and a
	jp p,l0d81
	cp #80
	jr nz,l0d87
	ld hl,(l116e)
	ld a,(hl)
	inc hl
.l0d81
	ld (l1170),hl
	ld (l09e4),a
.l0d87
	ret
.l0d88
	ld a,(l1134)
	and a
	jr nz,l0d98
	ld a,(l1140)
	and a
	jr nz,l0d98
	ld (l09c7),a
	ret
.l0d98
	dec a
	ld (l1134),a
	ld a,(l1142)
	and a
	jr nz,l0dd0
	ld a,(l1140)
	and a
	jr nz,l0dae
	ld a,(l113d)
	and a
	jr z,l0e12
.l0dae
	dec a
	ld (l113d),a
	ld a,(l1135)
	ld (l1142),a
	ld a,(l113b)
	and a
	jr z,l0dc1
	ld a,(l118e)
.l0dc1
	ld b,a
	ld a,(l1136)
	add b
	ld (l09da),a
	ld a,(l1137)
	add b
	ld (l09db),a
.l0dd0
	ld hl,l1142
	dec (hl)
	ld hl,l1141
	ld a,(hl)
	and a
	jr z,l0de2
	ld hl,l1148
	dec (hl)
	jr nz,l0e05
	ld (hl),a
.l0de2
	ld a,(l113c)
	and a
	jr z,l0e05
	jp p,l0df8
	ld hl,(l09da)
	ld de,(l1138)
	add hl,de
	ld (l09da),hl
	jr l0e05
.l0df8
	ld hl,(l09da)
	ld de,(l1138)
	and a
	sbc hl,de
	ld (l09da),hl
.l0e05
	ld a,(l113a)
	bit 3,a
	jr nz,l0e12
	ld a,(l09da)
	ld (l09e0),a
.l0e12
	ld a,(l1143)
	dec a
	ld (l1143),a
	jr nz,l0e39
	ld a,(l113f)
	ld (l1143),a
	ld hl,(l1146)
	ld a,(hl)
	inc hl
	and a
	jp p,l0e33
	cp #80
	jr nz,l0e39
	ld hl,(l1144)
	ld a,(hl)
	inc hl
.l0e33
	ld (l1146),hl
	ld (l09e2),a
.l0e39
	ret
.l0e3a
	ld a,(l1149)
	and a
	jr nz,l0e4a
	ld a,(l1155)
	and a
	jr nz,l0e4a
	ld (l09c8),a
	ret
.l0e4a
	dec a
	ld (l1149),a
	ld a,(l1157)
	and a
	jr nz,l0e82
	ld a,(l1155)
	and a
	jr nz,l0e60
	ld a,(l1152)
	and a
	jr z,l0ec4
.l0e60
	dec a
	ld (l1152),a
	ld a,(l114a)
	ld (l1157),a
	ld a,(l1150)
	and a
	jr z,l0e73
	ld a,(l118f)
.l0e73
	ld b,a
	ld a,(l114b)
	add b
	ld (l09dc),a
	ld a,(l114c)
	add b
	ld (l09dd),a
.l0e82
	ld hl,l1157
	dec (hl)
	ld hl,l1156
	ld a,(hl)
	and a
	jr z,l0e94
	ld hl,l115d
	dec (hl)
	jr nz,l0eb7
	ld (hl),a
.l0e94
	ld a,(l1151)
	and a
	jr z,l0eb7
	jp p,l0eaa
	ld hl,(l09dc)
	ld de,(l114d)
	add hl,de
	ld (l09dc),hl
	jr l0eb7
.l0eaa
	ld hl,(l09dc)
	ld de,(l114d)
	and a
	sbc hl,de
	ld (l09dc),hl
.l0eb7
	ld a,(l114f)
	bit 3,a
	jr nz,l0ec4
	ld a,(l09dc)
	ld (l09e0),a
.l0ec4
	ld a,(l1158)
	dec a
	ld (l1158),a
	jr nz,l0eeb
	ld a,(l1154)
	ld (l1158),a
	ld hl,(l115b)
	ld a,(hl)
	inc hl
	and a
	jp p,l0ee5
	cp #80
	jr nz,l0eeb
	ld hl,(l1159)
	ld a,(hl)
	inc hl
.l0ee5
	ld (l115b),hl
	ld (l09e3),a
.l0eeb
	ret
.l0eec
	dw l0f20,l0f2e,l0f3c,l0f4a
	dw l0f58,l0f66,l0f74,l0f82
	dw l0f9e,l0fac,l0fba,l0f90
	dw l0fc8,l0fd6,l0fe4,l0ff2
	dw l1000,l100e,l101c,l102a
	dw l1038,l1046,l1054,l1062
	dw l1070,l107e
.l0f20
	db #0c,#03,#15,#00,#02,#00,#f7,#00
.l0f2e equ $ + 6
	db #01,#63,#08,#01,#00,#00,#0a,#63
	db #86,#01,#20,#00,#f6,#00,#ff,#00
.l0f3c equ $ + 4
	db #00,#01,#00,#02,#32,#63,#1f,#00
	db #01,#00,#f7,#00,#01,#63,#01,#02
.l0f4a equ $ + 2
	db #00,#03,#07,#05,#41,#02,#14,#00
	db #f6,#00,#ff,#ff,#03,#01,#00,#00
.l0f58
	db #0a,#63,#0b,#00,#01,#00,#f6,#00
.l0f66 equ $ + 6
	db #01,#00,#00,#01,#00,#00,#ff,#28
	db #1f,#00,#01,#00,#f6,#00,#01,#00
.l0f74 equ $ + 4
	db #06,#02,#00,#03,#50,#03,#a0,#03
	db #44,#00,#fe,#00,#ff,#63,#07,#02
.l0f82 equ $ + 2
	db #ff,#00,#ff,#01,#7f,#07,#16,#00
	db #f6,#00,#00,#ff,#07,#02,#ff,#00
.l0f90
	db #07,#02,#0f,#00,#11,#00,#f7,#ff
.l0f9e equ $ + 6
	db #01,#ff,#01,#01,#00,#00,#14,#02
	db #1f,#00,#10,#00,#f7,#00,#01,#63
.l0fac equ $ + 4
	db #02,#02,#00,#00,#96,#ff,#10,#00
	db #01,#00,#fe,#00,#ff,#63,#01,#08
.l0fba equ $ + 2
	db #00,#02,#32,#63,#1f,#00,#11,#00
	db #f7,#00,#01,#63,#01,#02,#00,#02
.l0fc8
	db #c8,#ff,#10,#00,#01,#04,#fe,#00
.l0fd6 equ $ + 6
	db #ff,#63,#01,#08,#00,#00,#0c,#05
	db #c8,#00,#20,#00,#f6,#00,#ff,#63
.l0fe4 equ $ + 4
	db #00,#01,#00,#00,#0c,#02,#0f,#00
	db #11,#00,#f7,#ff,#01,#ff,#00,#01
.l0ff2 equ $ + 2
	db #00,#00,#1e,#02,#40,#02,#0c,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.l1000
	db #1e,#02,#c0,#00,#04,#00,#fe,#00
.l100e equ $ + 6
	db #ff,#63,#04,#01,#00,#00,#09,#63
	db #09,#05,#11,#00,#f6,#00,#ff,#00
.l101c equ $ + 4
	db #08,#01,#00,#00,#19,#05,#41,#02
	db #14,#00,#f6,#01,#ff,#ff,#01,#01
.l102a equ $ + 2
	db #00,#00,#46,#03,#08,#05,#30,#00
	db #f6,#00,#ff,#ff,#04,#02,#00,#00
.l1038
	db #50,#04,#00,#04,#16,#00,#f6,#01
.l1046 equ $ + 6
	db #ff,#63,#00,#04,#00,#00,#0f,#03
	db #0f,#05,#30,#00,#f6,#00,#ff,#ff
.l1054 equ $ + 4
	db #00,#01,#00,#00,#0f,#63,#f0,#00
	db #21,#00,#fe,#00,#ff,#63,#04,#01
.l1062 equ $ + 2
	db #00,#00,#0b,#05,#0f,#00,#04,#00
	db #f6,#00,#01,#0a,#00,#01,#00,#00
.l1070
	db #32,#0a,#0a,#00,#03,#00,#f6,#01
.l107e equ $ + 6
	db #ff,#0a,#00,#04,#00,#00,#3c,#06
	db #81,#00,#24,#00,#f6,#00,#ff,#63
	db #00,#04,#00,#00
.l108c
	dw l10a0,l10b0,l10c9,l10d9
	dw l10e8,l110c,l111b,l111d
	dw l1120,l112e
.l10a0
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l10b0
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l10c9 equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
.l10d9 equ $ + 1
	db #ff,#0b,#0c,#0d,#0c,#0b,#0a,#09
	db #08,#08,#07,#07,#06,#06,#05,#ff
.l10e8
	db #0f,#0d,#0c,#0b,#0a,#0d,#0c,#0b
	db #0a,#09,#0b,#0a,#09,#08,#07,#09
	db #08,#07,#06,#05,#07,#06,#05,#04
	db #03,#05,#04,#03,#02,#01,#03,#02
.l110c equ $ + 4
	db #01,#02,#01,#ff,#0a,#0c,#0e,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.l111d equ $ + 5
.l111b equ $ + 3
	db #06,#05,#ff,#0d,#80,#0a,#09,#80
.l1120
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l112e equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#08,#09
.l1137 equ $ + 7
.l1136 equ $ + 6
.l1135 equ $ + 5
.l1134 equ $ + 4
	db #0a,#0b,#09,#80,#00,#00,#00,#00
.l113f equ $ + 7
.l113e equ $ + 6
.l113d equ $ + 5
.l113c equ $ + 4
.l113b equ $ + 3
.l113a equ $ + 2
.l1138
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1146 equ $ + 6
.l1144 equ $ + 4
.l1143 equ $ + 3
.l1142 equ $ + 2
.l1141 equ $ + 1
.l1140
	db #00,#00,#00,#00,#00,#00,#00,#00
.l114f equ $ + 7
.l114d equ $ + 5
.l114c equ $ + 4
.l114b equ $ + 3
.l114a equ $ + 2
.l1149 equ $ + 1
.l1148
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1157 equ $ + 7
.l1156 equ $ + 6
.l1155 equ $ + 5
.l1154 equ $ + 4
.l1153 equ $ + 3
.l1152 equ $ + 2
.l1151 equ $ + 1
.l1150
	db #00,#00,#00,#00,#00,#00,#00,#00
.l115f equ $ + 7
.l115e equ $ + 6
.l115d equ $ + 5
.l115b equ $ + 3
.l1159 equ $ + 1
.l1158
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1167 equ $ + 7
.l1166 equ $ + 6
.l1165 equ $ + 5
.l1164 equ $ + 4
.l1162 equ $ + 2
.l1161 equ $ + 1
.l1160
	db #00,#00,#00,#00,#00,#00,#00,#00
.l116e equ $ + 6
.l116d equ $ + 5
.l116c equ $ + 4
.l116b equ $ + 3
.l116a equ $ + 2
.l1169 equ $ + 1
.l1168
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1172 equ $ + 2
.l1170
	db #00,#00,#00
.l1173
	ld a,(l118e)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l1191
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l1191 equ $ + 3
.l1190 equ $ + 2
.l118f equ $ + 1
.l118e
	db #ff,#80,#1b,#34
.l1192
	db #2e
	dw l11e8,l11ae,l11ec
	db #20
	dw l11e8,l11ae,l11ec
	db #38
	dw l1485,l146f,l1489
	db #28
	dw l1485,l146f,l1489
.l11ae
	dw l164b,l11fc,l11fc,l11fc
	dw l11fc,l1212,l11fc,l11fc
	dw l11fc,l11fc,l1263,l12b4
	dw l12b4,l12d5,l164e,l11fc
	dw l11fc,l11fc,l11fc,l1212
	dw l11fc,l11fc,l11fc,l11fc
	dw l1263,l12b4,l12b4,l12d5
	dw #0000
.l11e8
	dw l1361,#0000
.l11ec
	dw l1376,l1376,l138c,l1376
	dw l1376,l138c,l13c8,#0000
.l11fc
	db #8a,#88,#01,#01,#dc,#e1,#09,#e0
	db #15,#e1,#0d,#e0,#0e,#e1,#0f,#e0
.l1212 equ $ + 6
	db #10,#e1,#04,#e0,#10,#87,#e1,#0c
	db #e0,#18,#e1,#10,#e0,#11,#e1,#12
	db #e0,#13,#e1,#07,#e0,#13,#e1,#0e
	db #e0,#1a,#e1,#12,#e0,#13,#e1,#14
	db #e0,#15,#e1,#09,#e0,#15,#e1,#05
	db #e0,#12,#e1,#09,#e0,#0a,#e1,#09
	db #e0,#0c,#e1,#00,#e0,#0c,#e1,#07
	db #e0,#13,#e1,#0b,#e0,#0c,#e1,#0d
	db #e0,#0e,#e1,#02,#e0,#0e,#e1,#07
	db #e0,#0b,#e1,#0c,#e0,#0d,#e1,#0e
.l1263 equ $ + 7
	db #e0,#0c,#e1,#0d,#e0,#09,#87,#e1
	db #0c,#e0,#18,#e1,#10,#e0,#11,#e1
	db #12,#e0,#13,#e1,#07,#e0,#13,#e1
	db #0e,#e0,#1a,#e1,#12,#e0,#13,#e1
	db #14,#e0,#15,#e1,#09,#e0,#15,#e1
	db #11,#e0,#1d,#e1,#15,#e0,#16,#e1
	db #15,#e0,#18,#e1,#0c,#e0,#18,#e1
	db #07,#e0,#13,#e1,#0b,#e0,#0c,#e1
	db #0d,#e0,#0e,#e1,#02,#e0,#0e,#e1
	db #07,#e0,#0b,#e1,#0c,#e0,#0d,#e1
	db #0e,#e0,#0c,#e1,#0d,#e0,#09,#87
.l12b4
	db #e1,#09,#e0,#11,#e1,#09,#e0,#0a
	db #e1,#0b,#e0,#0c,#e1,#00,#e0,#0c
	db #e1,#04,#e0,#10,#e1,#08,#e0,#09
	db #e1,#0a,#e0,#0b,#e1,#00,#e0,#0b
.l12d5 equ $ + 1
	db #87,#e1,#05,#e0,#12,#e1,#09,#e0
	db #0a,#e1,#0b,#e0,#0c,#e1,#18,#e0
	db #0c,#e1,#0b,#e0,#17,#e1,#0f,#e0
	db #10,#e1,#05,#e0,#06,#e1,#12,#e0
	db #06,#e1,#0b,#e0,#17,#e1,#0f,#e0
	db #10,#e1,#05,#e0,#06,#e1,#12,#e0
	db #06,#e1,#0c,#e0,#18,#e1,#10,#e0
	db #11,#e1,#12,#e0,#13,#e1,#0a,#e0
	db #13,#e1,#0e,#e0,#19,#e1,#12,#e0
	db #13,#e1,#14,#15,#e0,#09,#15,#e1
	db #05,#e0,#11,#e1,#09,#e0,#0a,#e1
	db #0b,#e0,#0c,#e1,#03,#e0,#0c,#e1
	db #07,#e0,#12,#e1,#0b,#e0,#0c,#e1
	db #0d,#0e,#e0,#02,#0e,#e1,#07,#e0
	db #13,#e1,#0b,#e0,#0c,#e1,#0d,#e0
	db #0e,#e1,#05,#e0,#0e,#d2,#e5,#0c
	db #88,#01,#01,#e2,#18,#e1,#15,#e0
.l1361 equ $ + 5
	db #1a,#e2,#18,#15,#87,#8b,#e0,#d1
	db #3f,#41,#41,#d0,#8d,#27,#d1,#41
	db #3f,#3f,#41,#41,#d0,#8d,#27,#41
.l1376 equ $ + 2
	db #41,#87,#8a,#88,#01,#01,#d2,#e0
	db #28,#28,#28,#28,#28,#25,#26,#26
	db #23,#25,#24,#23,#dc,#eb,#21,#87
.l138c
	db #da,#e1,#1c,#e0,#1d,#e1,#1f,#e0
	db #21,#e5,#24,#e1,#1e,#e0,#1f,#e1
	db #21,#e0,#24,#e5,#26,#dc,#e0,#29
	db #28,#29,#28,#29,#28,#29,#28,#29
	db #28,#29,#28,#29,#26,#28,#24,#26
	db #23,#24,#21,#22,#23,#22,#21,#d2
	db #2b,#2b,#2b,#e1,#2b,#e0,#2b,#dc
.l13c8 equ $ + 4
	db #e2,#2b,#2c,#87,#d9,#e2,#29,#2b
	db #e1,#2d,#e0,#2b,#e1,#29,#e0,#2b
	db #e2,#28,#e1,#2b,#e0,#2d,#e1,#2e
	db #e0,#2f,#e1,#2e,#e0,#2d,#e2,#29
	db #2b,#e1,#2d,#e0,#2b,#e1,#29,#e0
	db #2b,#e2,#28,#e1,#28,#e0,#28,#e1
	db #28,#e0,#28,#e1,#28,#e0,#28,#e2
	db #29,#2b,#2d,#30,#d2,#e0,#2f,#30
	db #2f,#2e,#2f,#2e,#2d,#2e,#2f,#30
	db #2f,#2e,#e1,#2f,#e0,#33,#e1,#34
	db #e0,#2d,#e3,#2f,#e0,#2e,#2f,#dc
	db #e0,#24,#2b,#28,#2b,#28,#2b,#28
	db #24,#2b,#24,#2b,#28,#26,#2a,#2d
	db #2a,#24,#25,#26,#2d,#2a,#2d,#2a
	db #26,#29,#2f,#24,#e1,#2d,#e0,#29
	db #e1,#26,#e0,#29,#2d,#24,#2c,#2b
	db #2f,#2b,#26,#2b,#2f,#30,#31,#30
	db #2c,#27,#29,#2b,#29,#26,#e1,#2f
	db #e0,#2b,#29,#2b,#2d,#2f,#30,#32
	db #e5,#30,#d2,#88,#01,#01,#e2,#31
	db #e1,#2e,#e0,#27,#e2,#25,#e1,#22
	db #e0,#27,#87
.l146f
	dw l164b,l148f,l148f,l148f
	dw l148f,l148f,l148f,l148f
	dw l148f,l14b5,#0000
.l1485
	dw l1536,#0000
.l1489
	dw l1546,l154b,#0000
.l148f
	db #8a,#88,#01,#01,#dc,#e2,#07,#e0
	db #07,#e1,#13,#e0,#07,#e3,#07,#e0
	db #07,#13,#07,#09,#0b,#e2,#0c,#e0
	db #0c,#e1,#18,#e0,#0c,#e3,#0e,#e0
.l14b5 equ $ + 6
	db #0e,#1a,#02,#04,#05,#87,#e2,#03
	db #e0,#03,#e1,#0f,#e0,#03,#e3,#03
	db #e0,#03,#0f,#03,#e1,#03,#e2,#05
	db #e0,#05,#e1,#11,#e0,#05,#e3,#05
	db #e0,#05,#11,#05,#e1,#05,#e2,#07
	db #e0,#07,#e1,#13,#e0,#07,#e3,#07
	db #e0,#07,#13,#07,#e1,#07,#e2,#07
	db #e0,#07,#e1,#13,#e0,#07,#e3,#07
	db #e0,#07,#13,#07,#e1,#07,#e2,#0a
	db #e0,#0a,#e1,#16,#e0,#0a,#e3,#0a
	db #e0,#0a,#16,#0a,#e1,#0a,#e2,#0c
	db #e0,#0c,#e1,#18,#e0,#0c,#e3,#0c
	db #e0,#0c,#18,#0c,#e1,#0c,#e2,#0e
	db #e0,#0e,#e1,#1a,#e0,#0e,#e3,#0e
	db #e0,#0e,#1a,#0e,#e1,#0e,#e2,#0e
	db #e0,#0e,#e1,#1a,#e0,#0e,#e3,#0e
.l1536 equ $ + 7
	db #e0,#0e,#1a,#0e,#e1,#0e,#87,#8b
	db #e1,#d1,#3f,#e0,#41,#41,#e1,#d0
.l1546 equ $ + 7
	db #8d,#24,#e0,#d1,#41,#41,#87,#8a
.l154b equ $ + 4
	db #88,#01,#01,#d5,#e1,#80,#e2,#23
	db #24,#e5,#26,#e0,#23,#24,#e2,#26
	db #26,#e1,#28,#26,#24,#23,#24,#e2
	db #26,#2b,#e9,#23,#dc,#e1,#80,#e0
	db #32,#26,#32,#80,#80,#26,#80,#32
	db #80,#32,#32,#80,#26,#80,#d5,#e1
	db #80,#e2,#23,#24,#e5,#26,#e0,#23
	db #24,#e2,#26,#e1,#26,#e0,#28,#e3
	db #26,#e1,#2a,#2d,#e0,#2a,#80,#e2
	db #2b,#2f,#e9,#26,#dc,#e0,#80,#32
	db #80,#26,#80,#32,#80,#26,#32,#80
	db #32,#80,#26,#80,#32,#32,#d8,#e1
	db #80,#2f,#2b,#28,#e5,#26,#e1,#23
	db #e2,#24,#26,#e1,#28,#e2,#2a,#2b
	db #e1,#2d,#ef,#26,#dc,#e1,#80,#e0
	db #32,#80,#32,#80,#26,#26,#80,#32
	db #32,#80,#32,#26,#32,#80,#d8,#e1
	db #80,#1f,#1f,#21,#e2,#23,#24,#e1
	db #23,#e2,#1f,#1c,#e1,#1c,#e2,#1e
	db #1f,#e1,#21,#ef,#1f,#dc,#e0,#80
	db #32,#80,#32,#8f,#80,#26,#80,#32
	db #80,#32,#32,#80,#26,#80,#80,#d5
	db #e1,#80,#2b,#2b,#e0,#2c,#e2,#2e
	db #e1,#2c,#2b,#27,#e2,#29,#e1,#2d
	db #e0,#2e,#e9,#30,#e1,#80,#2e,#2e
	db #e0,#30,#e2,#32,#e1,#30,#2e,#26
	db #e1,#2d,#2e,#e3,#30,#e1,#2e,#2d
	db #e3,#29,#d8,#e3,#29,#e1,#26,#e3
	db #32,#e1,#30,#2e,#29,#28,#29,#2b
	db #e3,#34,#e1,#32,#30,#2f,#ef,#2d
	db #df,#e0,#2d,#2f,#2d,#2f,#2d,#2f
	db #2d,#2f,#2d,#2f,#2d,#2f,#2d,#2f
.l164e equ $ + 7
.l164b equ $ + 4
	db #2d,#2f,#dc,#87,#89,#05,#87,#89
	db #06,#87
;
.music_info
	db "Flimbo's Quest (1990)(System 3)()",0
	db "",0

	read "music_end.asm"
