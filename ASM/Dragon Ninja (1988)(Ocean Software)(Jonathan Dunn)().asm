; Music of Dragon Ninja (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRAGONNI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0613
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.init_music	;&0613 a=0->2
;
	ld hl,l0c8d
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l0e12
	add hl,bc
	ld a,(hl)
	ld (l0712),a
	inc hl
	ld ix,l0676
	ld c,#25
	ld a,#03
.l0634
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,l0634
	ld (l0995),a
	inc a
	ld (l06e5),a
	ld (l0c8d),a
	ret
.l0676
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09
.l069b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#12
.l06c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
.l06e5
	db #00
;
.play_music	;&06e6
;
	call l0ce3
	ld a,(l0c8d)
	and a
	jp z,l0742
.l06f1 equ $ + 1
	ld a,#00
	ld (l073e),a
	ld hl,l06e5
	dec (hl)
	jr nz,l0716
	ld b,(hl)
	ld ix,l0676
	call l0893
	ld ix,l069b
	call l0893
	ld ix,l06c0
	call l0893
.l0712 equ $ + 1
	ld a,#01
	ld (l06e5),a
.l0716
	ld ix,l0676
	call l0962
	ld (l0a73),hl
	ld (l0a7b),a
	ld ix,l069b
	call l0962
	ld (l0a75),hl
	ld (l0a7c),a
	ld ix,l06c0
	call l0962
	ld (l0a77),hl
	ld (l0a7d),a
.l073e equ $ + 1
	ld a,#00
	ld (l0a79),a
.l0742
	ld a,(l0c8e)
	and a
	jr z,l0772
	ld hl,(l0a80)
	ld (l0a73),hl
	ld hl,(l0a84)
	ld (l0a77),hl
	ld a,(l0a86)
	ld (l0a79),a
;.l075a
	ld a,(l0a7a)
	or #2d
	ld hl,l0a87
	and (hl)
	ld (l0a7a),a
	ld a,(l0a88)
	ld (l0a7b),a
	ld a,(l0a8a)
	ld (l0a7d),a
.l0772
	ld a,(l0c8d)
	ld hl,l0c8e
	or (hl)
	ret z
	ld hl,l0a7e
	ld d,#0b
.l077f
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
	jp p,l077f
	ret
.l07a0
	defs 1,0	;	di
;
.stop_music	;07a1
;
	xor a
	ld (l0c8d),a
.l07a5
	ld de,&0d00
.l07a8
	call l07b2
	dec d
	jp p,l07a8
	ld de,#0000
.l07b2
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
	xor a
	ld (l0c8e),a
	ld (l0a7b),a
	ld (l0a7c),a
	ld (l0a7d),a
	ret
;
.jumps_table
;
	db #9f
	db #87
	db #8b
	db #90
	db #4e
	db #7d
	db #78
	db #0f
	db #67
	db #5f
	db #24
	db #0e
	db #36
	db #8c
	db #04
	db #99
	db #9e
	db #a3
	pop hl
	jp l07a0
	jp l0c18
	ld a,(ix+#24)
	ld c,a
	and #07
	ld hl,l0a3e
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l08a1
	ld a,(ix+#24)
	ld c,a
	and #38
	ld hl,l0a3e
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l08a1
	ld hl,l0a3e
	ld a,(ix+#24)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l08a1
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l08a1
	ld a,(de)
	inc de
	ld (l0995),a
	jr l08a1
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l08a1
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l08a1
	ld (ix+#1d),b
	jr l08a1
	ld (ix+#1d),#40
	jr l08a1
	ld (ix+#1d),#c0
	jr l08a1
	set 1,(ix+#00)
	jr l08a1
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l08df
	res 5,(ix+#00)
	jr l08df
	ld (ix+#1f),#ff
	jr l08a1
	ld (ix+#1f),b
	jr l08a1
.l0893
	dec (ix+#10)
	jr nz,l08fc
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l08a1
	ld a,(de)
	inc de
	and a
	jp m,l090d
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l08b6
	ld (l06f1),a
.l08b6
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l08df
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l08fb
	ld a,(l0c8e)
	and a
	jr nz,l08fb
	ld (ix+#1f),#ff
.l08fb
	ret
.l08fc
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l0909
	inc (ix+#12)
	ret
.l0909
	dec (ix+#12)
	ret
.l090d
	cp #b8
	jr c,l095a
	add #20
	jr c,l093b
	add #10
	jr c,l0942
	add #10
	jr nc,l0933
	ld c,a
	ld hl,l0b4c
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l08a1
.l0933
	add #09
	ld (l0712),a
	jp l08a1
.l093b
	inc a
	ld (ix+#11),a
	jp l08a1
.l0942
	ld hl,l0b84
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
	jp l08a1
.l095a
	ld hl,jumps_table-&80	;l075a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0962
	ld c,(ix+#00)
	bit 5,c
	jr z,l0994
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l098e
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l098e
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l098e
	ld a,(ix+#18)
	ld (ix+#13),a
.l0995 equ $ + 1
.l0994
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l09ae
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l09ae
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l0a8c
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0a0f
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l09d8
	bit 0,c
	jr nz,l09f6
.l09d8
	bit 5,l
	jr nz,l09e8
	sub (ix+#1b)
	jr nc,l09f3
	set 5,(ix+#1d)
	sub a
	jr l09f3
.l09e8
	add (ix+#1b)
	cp b
	jr c,l09f3
	res 5,(ix+#1d)
	ld a,b
.l09f3
	ld (ix+#1c),a
.l09f6
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0a01
	dec d
.l0a01
	add #a0
	jr c,l0a0d
.l0a05
	sla e
	rl d
	add #18
	jr nc,l0a05
.l0a0d
	add hl,de
	ex de,hl
.l0a0f
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0a3a
	ld b,(ix+#0e)
	djnz l0a37
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0a26
	dec b
.l0a26
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0a3a
.l0a37
	ld (ix+#0e),b
.l0a3a
	cpl
	and #03
.l0a3e equ $ + 1
	ld a,#00
	jr nz,l0a4b
	ld a,(l06f1)
	xor #08
	ld (l073e),a
	ld a,#07
.l0a4b
	ld hl,l0a7a
	xor (hl)
	and (ix+#24)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l0a6e
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#24)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l073e),a
.l0a6e
	ex de,hl
	ld a,(ix+#13)
	ret
.l0a7a equ $ + 7
.l0a79 equ $ + 6
.l0a77 equ $ + 4
.l0a75 equ $ + 2
.l0a73
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l0a81 equ $ + 6
.l0a80 equ $ + 5
.l0a7e equ $ + 3
.l0a7d equ $ + 2
.l0a7c equ $ + 1
.l0a7b
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l0a8a equ $ + 7
.l0a88 equ $ + 5
.l0a87 equ $ + 4
.l0a86 equ $ + 3
.l0a84 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l0a8c
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l0b4c
	db #0b,#0b,#0c,#1f,#2a,#2b,#32,#31
	db #30,#2f,#2e,#80,#0c,#80,#13,#12
	db #11,#10,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#80,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#80,#00,#8c
	db #00,#00,#04,#04,#07,#07,#0c,#8c
.l0b84
	dw l0b9b,l0ba5,l0baf,l0bb8
	dw l0bca,l0bd4,l0bdc,l0be9
	dw l0bf4,l0c00,l0c0a
.l0b9b equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #07,#87
.l0ba5 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#09,#08
	db #07,#87
.l0baf equ $ + 1
	db #00,#0f,#0e,#0e,#0d,#0a,#09,#08
	db #87
.l0bb8 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#87
.l0bca equ $ + 1
	db #00,#0d,#0f,#0e,#0d,#0c,#0a,#09
	db #08,#87
.l0bd4 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#87
.l0bdc equ $ + 1
	db #00,#0d,#0e,#0f,#0f,#0e,#0e,#0d
	db #0b,#0a,#09,#08,#87
.l0be9 equ $ + 1
	db #00,#0f,#0f,#0f,#0e,#0d,#07,#06
	db #04,#00,#87
.l0bf4 equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#87
.l0c00 equ $ + 1
	db #01,#0c,#0d,#0e,#0f,#0e,#0d,#0b
	db #0a,#87
.l0c0a equ $ + 1
	db #02,#0f,#0e,#0c,#0b,#0a,#09,#08
	db #05,#04,#03,#02,#01,#00,#87
.l0c18
	ld c,(ix+#05)
	ld b,(ix+#06)
.l0c1e
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(ix+#21)
	dec a
	jp m,l0c3b
	ld (ix+#21),a
	ld e,(ix+#22)
	ld d,(ix+#23)
	jr nz,l0c52
	inc bc
	inc bc
	jr l0c1e
.l0c3b
	ld (ix+#20),#00
.l0c3f
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l0c5d
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0c52
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l08a1
.l0c5d
	dec de
	ld a,d
	or e
	jr nz,l0c6e
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc bc
	inc bc
	inc bc
	inc de
	jr l0c3f
.l0c6e
	dec de
	ld a,d
	or e
	inc de
	inc de
	jr nz,l0c89
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	inc hl
	ld e,(hl)
	ld (ix+#22),e
	inc hl
	ld d,(hl)
	ld (ix+#23),d
	inc bc
	inc bc
	inc bc
	jr l0c52
.l0c89
	inc bc
	inc bc
	jr l0c52
.l0c8e equ $ + 1
.l0c8d
.music_end
	db #00,#00,#ff,#47
	ld a,(l0c8e)
	or a
	ret nz
	ld a,b
	ld hl,l0d81
	add a
	add l
	ld l,a
	jr nc,l0ca0
	inc h
.l0ca0
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l0de0
.l0ca8
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0ca8
	ld a,(l0de1)
	ld (l0df1),a
	ld hl,(l0de2)
	ld (l0a80),hl
	ld de,(l0de4)
	ld (l0a84),de
	ld a,l
	ld (l0a86),a
	ld a,(l0de7)
	ld (l0a87),a
	ld a,(l0de6)
	ld e,a
	ld d,#0c
	call l07b2
	ld a,(l0df0)
	ld e,a
	ld d,#0d
	call l07b2
	ld hl,l0c8e
	inc (hl)
	ret
.l0ce3
	call l0df3
	ld a,(l0c8e)
	and a
	ret z
	ld a,(l0de0)
	and a
	jr nz,l0cf7
	ld (l0c8e),a
	jp l07a5
.l0cf7
	dec a
	ld (l0de0),a
	ld a,(l0df1)
	and a
.l0d00 equ $ + 1
	jr nz,l0d30
	ld a,(l0dee)
	and a
	ret z
	dec a
	ld (l0dee),a
	ld a,(l0de1)
	ld (l0df1),a
	ld a,(l0def)
	and a
	jr z,l0d19
	ld a,(l0e0e)
.l0d19
	ld b,a
	ld a,(l0de2)
	add b
	ld (l0a80),a
	ld a,(l0de3)
	add b
	and #0f
	ld (l0a81),a
	ld hl,(l0de4)
	ld (l0a84),hl
.l0d30
	ld hl,l0df1
	dec (hl)
	ld a,(l0dec)
	and a
	jr z,l0d57
	jp p,l0d4a
	ld hl,(l0a80)
	ld de,(l0de8)
	add hl,de
	ld (l0a80),hl
	jr l0d57
.l0d4a
	ld hl,(l0a80)
	ld de,(l0de8)
	and a
	sbc hl,de
	ld (l0a80),hl
.l0d57
	ld a,(l0ded)
	and a
	jr z,l0d7a
	jp p,l0d6d
	ld hl,(l0a84)
	ld de,(l0dea)
	add hl,de
	ld (l0a84),hl
	jr l0d7a
.l0d6d
	ld hl,(l0a84)
	ld de,(l0dea)
	and a
	sbc hl,de
	ld (l0a84),hl
.l0d7a
	ld a,(l0a80)
	ld (l0a86),a
	ret
.l0d81
	dw l0d8b,l0d9c,l0dad,l0dbe
	dw l0dcf
.l0d8b
	db #07,#03,#10,#00,#8b,#00,#0f,#fa
	db #10,#00,#08,#01,#ff,#01,#0a,#00
	db #00
.l0d9c
	db #05,#0a,#02,#01,#83,#00,#0c,#fa
	db #38,#00,#40,#00,#ff,#ff,#01,#00
	db #00
.l0dad
	db #05,#ff,#09,#00,#02,#00,#0a,#f3
	db #02,#00,#00,#00,#01,#01,#ff,#00
	db #00
.l0dbe
	db #07,#03,#04,#00,#0b,#00,#0f,#fa
	db #10,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.l0dcf
	db #14,#06,#01,#02,#11,#02,#0f,#d2
	db #80,#03,#0c,#02,#ff,#ff,#ff,#00
	db #00

.l0de0
	db #00
.l0de1
	db #00
.l0de2
	db #00
.l0de3
	db #00
.l0de4
	db #00,#00
.l0ded equ $ + 7
.l0dec equ $ + 6
.l0dea equ $ + 4
.l0de8 equ $ + 2
.l0de7 equ $ + 1
.l0de6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0df1 equ $ + 3
.l0df0 equ $ + 2
.l0def equ $ + 1
.l0dee
	db #00,#00,#00,#00,#00
.l0df3
	ld a,(l0e0e)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l0e11
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l0e11 equ $ + 3
.l0e0e
	db #ff,#80,#1b,#34
.l0e12
	db #05
	dw l0e27,l0f08,l0ff3
	db #05
	dw l116b,l116f,l1175
	db #05
	dw l11ad,l11b3,l11bc
.l0e27
	dw l103e,l103e,l104b
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1110,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1110,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053,l1053
	db #01,#00,#f9
	dw l1053
	db #01,#00,#fb
	dw l1053
	db #02,#00,#06
	dw l1023,l103e,l103e,l1076
	dw #0000
.l0f08
	dw l1026
	db #01,#00,#f9
	dw l1026
	db #01,#00,#fb
	dw l1026,l1026
	db #01,#00,#f9
	dw l1026
	db #01,#00,#fb
	dw l1026,l1026
	db #01,#00,#f9
	dw l1026
	db #01,#00,#fb
	dw l1026,l1026
	db #01,#00,#f9
	dw l1026
	db #01,#00,#fb
	dw l1026,l1026
	db #01,#00,#f9
	dw l1026
	db #01,#00,#fb
	dw l1026,l1026
	db #01,#00,#f9
	dw l1026
	db #01,#00,#fb
	dw l1026
	dw l10bb
	db #01,#00,#f9
	dw l10bb
	db #01,#00,#fb
	dw l10bb,l10bb
	db #01,#00,#f9
	dw l10bb
	db #01,#00,#fb
	dw l10bb,l10c9,l10c9,l10eb
	db #01,#00,#f9
	dw l10eb
	db #01,#00,#fb
	dw l10eb,l10eb
	db #01,#00,#f9
	dw l10eb
	db #01,#00,#fb
	dw l10eb,l10bb
	db #01,#00,#f9
	dw l10bb
	db #01,#00,#fb
	dw l10bb,l10c9,l10eb
	db #01,#00,#f9
	dw l10eb
	db #01,#00,#fb
	dw l10eb,l10eb
	db #01,#00,#f9
	dw l10eb
	db #01,#00,#fb
	dw l10eb,l1110,l1026
	db #01,#00,#f9
	dw l1026
	db #01,#00,#fb
	dw l1026,l1110,l1113
	db #01,#00,#f9
	dw l1113
	db #01,#00,#fb
	dw l1113,l1113
	db #01,#00,#f9
	dw l1113
	db #01,#00,#fb
	dw l1113,l1125
	db #01,#00,#f9
	dw l1125
	db #01,#00,#fb
	dw l1125,l1132
	db #01,#00,#f9
	dw l1132
	db #01,#00,#fb
	dw l1132
	db #02,#00,#06
	dw l1125,l115d,#0000
.l0ff3
	dw l1023,l1023,l1023,l1023
	dw l1023,l1023
	db #02,#00,#2a
	dw l108b,l10ff,l108b,l108b
	dw l108b,l10ff
	db #02,#00,#0c
	dw l108b,l1023,l1023,l1023
	dw l108b,l108b,l108b,l1023
	dw #0000
.l1023
	db #ff,#80,#87
.l1026
	db #d1,#8a,#90,#c0,#88,#01,#01,#82
	db #e1,#46,#44,#46,#44,#41,#e3,#44
	db #e1,#46,#e3,#41,#3f,#e7,#41,#87
.l103e
	db #d0,#88,#01,#01,#83,#8a,#91,#c0
	db #ff,#22,#1b,#1d,#87
.l104b
	db #d2,#88,#01,#01,#82,#91,#8a,#c0
.l1053
	db #e1,#20,#22,#8c,#d3,#c2,#e1,#18
	db #d2,#c0,#8a,#e3,#22,#e1,#1d,#e3
	db #22,#e1,#20,#22,#8c,#d3,#c2,#e1
	db #18,#d2,#c0,#8a,#e3,#22,#e1,#1d
	db #e3,#22,#87
.l1076
	db #ff,#22,#87,#8a,#88,#01,#01,#83
	db #c0,#d0,#91,#ff,#22,#8f,#8f,#87
	db #ff,#2e,#8f,#8f,#87
.l108b
	db #d4,#81,#c1,#8a,#90,#e1,#3a,#38
	db #e3,#3a,#e1,#22,#3a,#8c,#d3,#c2
	db #e1,#18,#d4,#c1,#8a,#3a,#38,#3a
	db #22,#3a,#22,#35,#8c,#d3,#c2,#e1
	db #18,#18,#87
;.l10ae
	db #d0,#88,#01,#01,#82,#c0,#8a,#91
	db #ff,#2e,#80,#80,#87
.l10bb
	db #81,#c4,#d6,#e3,#3a,#e7,#41,#e5
	db #46,#44,#e3,#3f,#41,#87
.l10c9
	db #88,#01,#01,#82,#c0,#d6,#e5,#3a
	db #35,#3f,#3e,#e7,#3a,#e5,#3f,#3e
	db #e3,#3f,#e7,#41,#3f,#e1,#3a,#39
	db #3a,#39,#e3,#3a,#39,#81,#c5,#ef
	db #35,#87
.l10eb
	db #c1,#d2,#e1,#80,#46,#e3,#46,#e1
	db #44,#e3,#44,#41,#e1,#46,#46,#e3
	db #44,#e5,#46,#87
.l10ff
	db #8c,#d3,#c2,#e3,#18,#e1,#18,#18
	db #18,#e0,#18,#18,#18,#18,#18,#18
	db #87
.l1110
	db #ef,#80,#87
.l1113
	db #d4,#e1,#46,#46,#46,#46,#e3,#44
	db #46,#e1,#44,#e3,#46,#44,#46,#e1
	db #41,#87
.l1125
	db #88,#01,#01,#82,#c0,#d6,#ed,#3a
	db #e5,#41,#eb,#3a,#87
.l1132
	db #d7,#c1,#e1,#46,#e0,#46,#44,#e1
	db #46,#e0,#46,#44,#e1,#46,#e0,#46
	db #44,#e1,#46,#e0,#46,#44,#e1,#46
	db #e0,#46,#44,#e1,#46,#e0,#46,#44
	db #e1,#46,#e0,#46,#44,#e1,#46,#e0
	db #46,#44,#87
.l115d
	db #88,#01,#01,#82,#c0,#d6,#e9,#46
	db #e5,#44,#e7,#41,#3f,#87
.l116b
	dw l117c,#0000
.l116f
	dw l1179,l117c,#0000
.l1175
	dw l1195,#0000
.l1179
	db #e0,#80,#87
.l117c
	db #8a,#d1,#c0,#88,#01,#01,#82,#90
	db #e1,#2e,#2e,#2e,#e3,#2e,#e1,#31
	db #e3,#33,#e1,#36,#38,#3a,#e7,#33
	db #8e
.l1195
	db #8c,#d0,#c2,#e1,#13,#13,#13,#e3
	db #13,#e1,#13,#e3,#13,#e1,#18,#e0
	db #18,#18,#e1,#18,#18,#ef,#80,#87
.l11ad
	dw l1179,l11c5,#0000
.l11b3
	dw l1179
	db #01,#00,#05
	dw l11c5,#0000
.l11bc
	dw l1179
	db #01,#00,#07
	dw l11c5,#0000
.l11c5
	db #8a,#d2,#88,#01,#01,#82,#91,#c0
	db #e5,#2a,#e1,#25,#e5,#27,#e1,#20
	db #eb,#84,#fe,#14,#22,#8e
;
.music_info
	db "Dragon Ninja (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
