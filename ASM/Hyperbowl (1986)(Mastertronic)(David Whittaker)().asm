; Music of Hyperbowl (1986)(Mastertronic)(David Whittaker)()
; Ripped by Megachur the 25/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HYPERBOW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #483f

	read "music_header.asm"

; 18/02/2007 - rework player + data
;
.init_music
;
	ld hl,#0000
	ld (l4d35),hl
	ld b,#00
	ld hl,l4ef8
	ld ix,l4886
	ld c,#1f
	ld a,#03
.l4852
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
	jr nz,l4852
	inc a
	ld (l48e3),a
	ld (l4d35),a
	ret
.l4886
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l48a5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l48c4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l48e3
	db #00
;
.play_music
;
	call l4d8a
	ld a,(l4d35)
	and a
	jr z,l493f
.l48ee equ $ + 1
	ld a,#00
	ld (l493b),a
	ld hl,l48e3
	dec (hl)
	jr nz,l4913
	ld b,(hl)
	ld ix,l4886
	call l4a87
	ld ix,l48a5
	call l4a87
	ld ix,l48c4
	call l4a87
	ld hl,l48e3
.l4912 equ $ + 1
	ld (hl),#01
.l4913
	ld ix,l4886
	call l4b25
	ld (l4c32),hl
	ld (l4c3a),a
	ld ix,l48a5
	call l4b25
	ld (l4c34),hl
	ld (l4c3b),a
	ld ix,l48c4
	call l4b25
	ld (l4c36),hl
	ld (l4c3c),a
.l493b equ $ + 1
	ld a,#00
	ld (l4c38),a
.l493f
	ld a,(l4d36)
.l4942
	and a
	jr z,l4975
	ld hl,(l4c3f)
	ld (l4c32),hl
	ld hl,(l4c43)
	ld (l4c36),hl
	ld a,(l4c45)
	ld (l4c38),a
	ld a,(l4c39)
	or #2d
	ld hl,l4c46
	and (hl)
	ld (l4c39),a
	ld a,(l4c47)
	ld (l4c3a),a
	ld a,(l4c49)
	ld (l4c3c),a
	ld a,(l4c4b)
	ld (l4c3e),a
.l4975
	ld hl,l4c3e
	ld d,#0c
.l497a
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
	jp p,l497a
	ret
;
.stop_music
;
	ld hl,#0000
	ld (l4d35),hl
.l49a1
	ld a,#3f
	ld (l4c39),a
	ret
.l49a7
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
	db #bc,#a4,#a8,#ad,#6b,#9a,#95,#10
	db #84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (l4d35),a
	pop hl
	jp l49a1
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
	jr nz,l49fb
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l49fb
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l4a95
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l4c17
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l4a95
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l4c17
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l4a95
	ld hl,l4c17
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l4a95
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l4a95
	ld a,(de)
	inc de
	ld (l48ee),a
	jr l4a95
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l4a95
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l4a95
	ld (ix+#1d),b
	jr l4a95
	ld (ix+#1d),#40
	jr l4a95
	ld (ix+#1d),#c0
	jr l4a95
	set 1,(ix+#00)
	jr l4a95
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l4ab8
.l4a87
	dec (ix+#10)
	jr nz,l4ac5
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l4a95
	ld a,(de)
	inc de
	and a
	jp m,l4ad6
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l4ab8
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l4ac5
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l4ad2
	inc (ix+#12)
	ret
.l4ad2
	dec (ix+#12)
	ret
.l4ad6
	cp #b8
	jr c,l4b1d
	add #20
	jr c,l4b02
	add #10
	jr c,l4b08
	add #10
	jr nc,l4afb
	ld c,a
	ld hl,l4cf4
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l4a95
.l4afb
	add #09
	ld (l4912),a
	jr l4a95
.l4b02
	inc a
	ld (ix+#11),a
	jr l4a95
.l4b08
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
	jp l4a95
.l4b1d
	ld hl,l4942
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l4b25
	ld c,(ix+#00)
	bit 5,c
	jr z,l4b70
	ld a,(ix+#16)
	sub #10
	jr nc,l4b58
	bit 6,c
	jr z,l4b5d
	add (ix+#13)
	jr nc,l4b3d
	sbc a
.l4b3d
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l4b53
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l4b70
.l4b53
	ld (ix+#18),a
	jr l4b70
.l4b58
	ld (ix+#16),a
	jr l4b70
.l4b5d
	cpl
	sub #0f
	add (ix+#13)
	jr c,l4b66
	sub a
.l4b66
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l4b70
	res 5,c
.l4b70
	ld a,(ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l4b86
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l4b86
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l4c4c
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l4be8
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l4bb1
	bit 0,c
	jr nz,l4bcf
.l4bb1
	bit 5,l
	jr nz,l4bc1
	sub (ix+#1b)
	jr nc,l4bcc
	set 5,(ix+#1d)
	sub a
	jr l4bcc
.l4bc1
	add (ix+#1b)
	cp b
	jr c,l4bcc
	res 5,(ix+#1d)
	ld a,b
.l4bcc
	ld (ix+#1c),a
.l4bcf
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l4bda
	dec d
.l4bda
	add #a0
	jr c,l4be6
.l4bde
	sla e
	rl d
	add #18
	jr nc,l4bde
.l4be6
	add hl,de
	ex de,hl
.l4be8
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l4c13
	ld b,(ix+#0e)
	djnz l4c10
	ld c,(ix+#0d)
	bit 7,c
	jr z,l4bff
	dec b
.l4bff
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l4c13
.l4c10
	ld (ix+#0e),b
.l4c13
	cpl
	and #03
.l4c17 equ $ + 1
	ld a,#38
	jr nz,l4c24
	ld a,(l48ee)
	xor #08
	ld (l493b),a
	ld a,#07
.l4c24
	ld hl,l4c39
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l4c39 equ $ + 7
.l4c38 equ $ + 6
.l4c36 equ $ + 4
.l4c34 equ $ + 2
.l4c32
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l4c40 equ $ + 6
.l4c3f equ $ + 5
.l4c3e equ $ + 4
.l4c3c equ $ + 2
.l4c3b equ $ + 1
.l4c3a
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l4c49 equ $ + 7
.l4c47 equ $ + 5
.l4c46 equ $ + 4
.l4c45 equ $ + 3
.l4c43 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
.l4c4b equ $ + 1
	db #00,#ff
.l4c4c
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
.l4cf4
	db #0e,#0f,#12,#15,#19,#1d,#20,#23
	db #26,#29,#2b,#2d,#2f,#31,#00,#87
	db #00,#03,#07,#87,#00,#04,#07,#87
	db #00,#03,#07,#0c,#87,#00,#04,#07
	db #0c,#87,#07,#0c,#0f,#87,#07,#0c
	db #10,#87,#03,#07,#0c,#87,#04,#07
	db #0c,#87,#00,#0c,#87,#00,#04,#87
	db #00,#03,#87,#00,#05,#87,#00,#07
.l4d36 equ $ + 2
.l4d35 equ $ + 1
.music_end equ $ + 1
	db #87,#00,#00
	ld hl,l4d36
	ld (hl),#00
	ld hl,l4e1d
	sla a
	add l
	ld l,a
	jr nc,l4d46
	inc h
.l4d46
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l4ec6
.l4d4e
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l4d4e
	ld a,(l4ec7)
	ld (l4ed7),a
	ld hl,(l4ec8)
	ld (l4c3f),hl
	ld de,(l4eca)
	ld (l4c43),de
	ld a,l
	ld (l4c45),a
	ld a,(l4ecd)
	ld (l4c46),a
	ld a,(l4ecc)
	ld (l4c4b),a
	ld a,(l4ed6)
	ld e,a
	ld d,#0d
	call l49a7
	ld hl,l4d36
	inc (hl)
	ret
.l4d86
	ld (l4d36),a
	ret
.l4d8a
	call l4ed9
	ld a,(l4ec6)
	and a
	jr z,l4d86
	dec a
	ld (l4ec6),a
	ld a,(l4ed7)
	and a
	jr nz,l4dcc
	ld a,(l4ed4)
	and a
	ret z
	dec a
	ld (l4ed4),a
	ld a,(l4ec7)
	ld (l4ed7),a
	ld a,(l4ed5)
	and a
	jr z,l4db5
	ld a,(l4ef4)
.l4db5
	ld b,a
	ld a,(l4ec8)
	add b
	ld (l4c3f),a
	ld a,(l4ec9)
	add b
	and #0f
	ld (l4c40),a
	ld hl,(l4eca)
	ld (l4c43),hl
.l4dcc
	ld hl,l4ed7
	dec (hl)
	ld a,(l4ed2)
	and a
	jr z,l4df3
	jp p,l4de6
	ld hl,(l4c3f)
	ld de,(l4ece)
	add hl,de
	ld (l4c3f),hl
	jr l4df3
.l4de6
	ld hl,(l4c3f)
	ld de,(l4ece)
	and a
	sbc hl,de
	ld (l4c3f),hl
.l4df3
	ld a,(l4ed3)
	and a
	jr z,l4e16
	jp p,l4e09
	ld hl,(l4c43)
	ld de,(l4ed0)
	add hl,de
	ld (l4c43),hl
	jr l4e16
.l4e09
	ld hl,(l4c43)
	ld de,(l4ed0)
	and a
	sbc hl,de
	ld (l4c43),hl
.l4e16
	ld a,(l4c3f)
	ld (l4c45),a
	ret
.l4e1d
	dw l4e2f,l4e40,l4e4f,l4e60
	dw l4e71,l4e82,l4e93,l4ea4
	dw l4eb5
.l4e2f
	db #14,#15,#80,#00,#a8,#00,#1e,#f2
	db #99,#00,#9b,#00,#ff,#ff,#00,#00
.l4e40 equ $ + 1
	db #00,#28,#05,#80,#01,#a8,#01,#1e
	db #fa,#23,#28,#01,#01,#05,#00,#00
.l4e4f
	db #02,#02,#80,#00,#81,#00,#02,#fa
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e60 equ $ + 1
	db #00,#64,#08,#80,#00,#85,#00,#50
	db #d2,#23,#00,#28,#00,#ff,#ff,#14
.l4e71 equ $ + 2
	db #00,#00,#32,#06,#0a,#00,#0f,#00
	db #28,#d2,#03,#00,#04,#00,#ff,#01
.l4e82 equ $ + 3
	db #0a,#01,#00,#14,#06,#28,#00,#2b
	db #00,#1e,#fa,#20,#00,#20,#00,#ff
.l4e93 equ $ + 4
	db #ff,#06,#00,#00,#63,#63,#00,#00
	db #01,#00,#50,#d2,#01,#00,#01,#00
.l4ea4 equ $ + 5
	db #ff,#ff,#00,#00,#00,#1e,#1e,#00
	db #00,#01,#00,#0a,#d2,#01,#00,#01
.l4eb5 equ $ + 6
	db #00,#01,#01,#00,#00,#0e,#1e,#0f
	db #00,#02,#20,#02,#28,#fa,#20,#00
.l4ec6 equ $ + 7
	db #20,#00,#ff,#ff,#00,#00,#00,#00
.l4ece equ $ + 7
.l4ecd equ $ + 6
.l4ecc equ $ + 5
.l4eca equ $ + 3
.l4ec9 equ $ + 2
.l4ec8 equ $ + 1
.l4ec7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ed6 equ $ + 7
.l4ed5 equ $ + 6
.l4ed4 equ $ + 5
.l4ed3 equ $ + 4
.l4ed2 equ $ + 3
.l4ed0 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ed7
	db #00,#00
.l4ed9
	ld a,(l4ef4)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l4ef7
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l4ef7 equ $ + 3
.l4ef4
	db #ff,#80,#1b,#34
.l4ef8
	dw l4efe,l4f38,l4f6a
.l4efe
	dw l4f80,l4f80,l4f80,l4f80
	dw l4fbf,l4fbf,l4fbf,l4fbf
	dw l4fbf,l4fbf,l4fbf,l4fbf
	dw l4ffd,l4ffd,l4ffd,l4ffd
	dw l4ffd,l4ffd,l4ffd,l4ffd
	dw l4ffd,l4ffd,l4ffd,l4ffd
	dw l4ffd,l4ffd,l4ffd,l4ffd
	dw #0000
.l4f38
	dw l50db,l50db,l50db,l50db
	dw l503d,l503d,l5059,l5059
	dw l503d,l503d,l5059,l5059
	dw l5059,l5059,l5059,l5059
	dw l503d,l503d,l5059,l5059
	dw l503d,l503d,l5059,l5059
	dw #0000
.l4f6a
	dw l50db,l50db,l50db,l50db
	dw l506a,l506a,l507e,l507e
	dw l50a5,l50a5,#0000
.l4f80
	db #bc,#8c,#de,#00,#11,#05,#e0,#8d
	db #1f,#de,#00,#12,#08,#01,#01,#01
	db #de,#00,#11,#05,#84,#04,#01,#8d
	db #07,#de,#00,#12,#08,#01,#01,#de
	db #00,#11,#05,#e1,#8d,#1f,#de,#00
	db #12,#08,#e0,#01,#01,#01,#de,#00
	db #11,#05,#84,#04,#01,#8d,#07,#de
.l4fbf equ $ + 7
	db #00,#12,#08,#01,#01,#01,#87,#8b
	db #de,#00,#11,#05,#e0,#8d,#1f,#de
	db #00,#12,#09,#01,#01,#01,#de,#00
	db #11,#05,#84,#04,#01,#8d,#07,#de
	db #00,#12,#09,#01,#01,#de,#00,#11
	db #05,#e1,#8d,#1f,#de,#00,#12,#09
	db #e0,#01,#01,#01,#de,#00,#11,#05
	db #84,#04,#01,#8d,#07,#de,#00,#12
.l4ffd equ $ + 5
	db #09,#01,#01,#01,#87,#bc,#8b,#de
	db #00,#11,#07,#e1,#8d,#1f,#de,#00
	db #12,#09,#e0,#01,#01,#de,#00,#11
	db #07,#e1,#84,#02,#01,#8d,#07,#de
	db #00,#11,#07,#8d,#1f,#de,#00,#12
	db #09,#e0,#01,#01,#de,#00,#11,#07
	db #e1,#8d,#1f,#de,#00,#12,#09,#e0
	db #01,#01,#de,#00,#11,#07,#e1,#84
.l503d equ $ + 5
	db #04,#01,#8d,#07,#87,#88,#01,#01
	db #83,#df,#00,#12,#05,#8a,#e0,#c0
	db #13,#13,#13,#0e,#13,#13,#13,#02
	db #13,#13,#13,#13,#13,#1f,#0e,#1a
.l5059 equ $ + 1
	db #87,#0c,#0c,#0c,#13,#0c,#0c,#0c
	db #07,#0c,#0c,#13,#0c,#0c,#18,#13
.l506a equ $ + 2
	db #1f,#87,#88,#01,#01,#83,#dc,#00
	db #71,#01,#8a,#ff,#c2,#84,#01,#78
.l507e equ $ + 6
	db #2b,#84,#ff,#78,#24,#87,#88,#01
	db #02,#de,#00,#11,#04,#8a,#c9,#e1
	db #80,#24,#27,#e0,#2b,#e2,#2c,#e1
	db #24,#27,#e0,#20,#e2,#1f,#e1,#24
	db #27,#e0,#2c,#e2,#2b,#e1,#24,#27
.l50a5 equ $ + 5
	db #e0,#1f,#e0,#20,#87,#88,#01,#01
	db #df,#00,#12,#03,#8a,#c9,#e1,#1f
	db #2b,#2c,#e0,#2b,#e2,#2c,#e1,#2b
	db #2c,#e0,#2b,#e2,#2f,#e1,#37,#38
	db #e0,#37,#e8,#3b,#e1,#1f,#2b,#2c
	db #e0,#2b,#e2,#2c,#e1,#2b,#2c,#e0
	db #2b,#e2,#30,#e1,#37,#38,#e0,#37
.l50db equ $ + 3
	db #e8,#3c,#87,#ef,#80,#87
;
.music_info
	db "Hyperbowl (1986)(Mastertronic)(David Whittaker)",0
	db "",0

	read "music_end.asm"
