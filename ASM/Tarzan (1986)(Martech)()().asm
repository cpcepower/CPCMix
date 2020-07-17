; Music of Tarzan (1986)(Martech)()()
; Ripped by Megachur the 04/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TARZAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b770

	read "music_header.asm"

;
.play_music
.lb770
;
	ret
	push af
	push de
	push hl
	push bc
	push ix
	call lb89b
	pop ix
	pop bc
	pop hl
	pop de
	pop af
	ei
	ret
;
.init_music	;b782
;
	di
	ld hl,lb85d
	ld (lb84c),hl
	ld (lb850),hl
	ld (lb854),hl
	ld (lb858),hl
	ld a,#06
	dec a
	ld (lb83d),a
	xor a
	ld (lb85c),a
	ld a,#f3
	ld (lb770),a
	ei
	ret
;
.stop_music
;
	ld a,#c9
	ld (lb770),a
	ld de,#073f
	jp lbb4f
.lb7ae
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
	dw #002f,#0000
	db #06,#07,#1a,#20,#1f,#08,#09,#70
	db #1f,#70,#0a,#07,#11,#07,#1c,#07
	db #1e,#20
.lb82c
	db #00,#00
.lb835 equ $ + 7
.lb82f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb83d equ $ + 7
.lb837 equ $ + 1
.lb836
	db #3f,#00,#00,#00,#00,#00,#00,#00
.lb845 equ $ + 7
.lb844 equ $ + 6
.lb841 equ $ + 3
.lb83e
	db #00,#00,#00,#01,#01,#01,#00,#00
.lb84c equ $ + 6
.lb84b equ $ + 5
	db #00,#00,#00,#00,#00,#00
	dw lb85d      ; à revoir !!!
.lb854 equ $ + 6
.lb850 equ $ + 2
	dw lbbb0,lb85d,lbc13,lb85d
.lb85d equ $ + 7
.lb85c equ $ + 6
.lb858 equ $ + 2
	dw lbc76,lb85d,lbcd9
	db #00,#ff,#ff
.lb85f
	db #00
.lb860
	db #00
.lb861
	db #00
.lb862
	db #00
.lb863
	db #0c,#0c,#0c,#0c,#0c,#08,#00,#00
	db #0a,#0a,#0a,#00,#00,#00,#00,#00
	db #08,#0c,#0e,#0e,#0d,#09,#00,#00
	db #0a,#0f,#0e,#0c,#0b,#0a,#00,#00
	db #08,#07,#06,#04,#03,#02,#00,#00
	db #0e,#0a,#06,#0c,#08,#04,#00,#00
	db #0c,#0f,#0e,#0b,#0b,#0b,#00,#00
.lb89b
	ld a,(lb83d)
	inc a
	ld (lb83d),a
	cp #06
	call z,lb8c2
	xor a
	call lbb7f
	ld a,#01
	call lbb7f
	ld a,#02
	call lbb7f
	call lbaff
	call lbb22
	ld e,#00
	ld b,#06
	jp lbb70
.lb8c2
	ld hl,lb836
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call lba49
	ld hl,lb83d
	ld (hl),b
	inc hl
	call lba49
	ld hl,lb844
	ld (hl),b
	inc hl
	call lba49
	inc hl
	call lba49
	ld hl,lb858
	call lb954
	call lba0d
	ld hl,lb84c
	call lb954
	ld (lb85f),a
	ld c,#01
	call lb990
	ld hl,lb850
	call lb954
	ld (lb860),a
	ld c,#02
	call lb990
	ld hl,lb854
	call lb954
	ld (lb861),a
	ld c,#03
	call lb990
	call lba88
	ld hl,lb82f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call lb945
	inc hl
	inc hl
	call lb945
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call lb945
	ld e,#00
	ld b,#0b
	call lbb70
	ld a,(lb85c)
	inc a
.lb93b
	ld (lb85c),a
	cp #08
	ret nz
	xor a
	jr lb93b
	ret
.lb945
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	dec hl
	cp d
	ret nz
	inc de
	ld (hl),e
	inc hl
	ld (hl),d
	dec hl
	dec de
	ret
.lb954
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(lb85c)
	cp #00
	jr nz,lb95f
	inc de
.lb95f
	ld a,(de)
	cp #ff
	jp z,lb988
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	ld l,a
	ld h,#00
	ld de,lbd3c
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld a,(lb85c)
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld b,a
	add a
	ld e,a
	ld hl,lb7ae
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.lb988
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr lb95f
.lb990
	ld a,b
	cp #36
	jp nc,lb9d3
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,lb82f
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,lb841
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,lb82c
	add hl,de
	ld a,(hl)
	ld hl,lb837
	add hl,de
	ld (hl),a
	ld hl,lb836
	dec c
	jp nz,lb9c8
	res 0,(hl)
.lb9c8
	dec c
	jp nz,lb9ce
	res 1,(hl)
.lb9ce
	dec c
	ret nz
	res 2,(hl)
	ret
.lb9d3
	ld a,h
	ld (lb835),a
	ld a,l
	and #f0
	cp #00
	jp z,lb9fe
	rrca
	rrca
	rrca
	rrca
.lb9e3
	ld hl,lb83e
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,lb836
	dec c
	jr nz,lb9f5
	res 3,(hl)
	ret
.lb9f5
	dec c
	jr nz,lb9fb
	res 4,(hl)
	ret
.lb9fb
	res 5,(hl)
	ret
.lb9fe
	ld a,l
	and #0f
	ld hl,lb837
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr lb9e3
.lba0d
	ld a,b
	and #03
	ld c,a
	ld a,b
	bit 2,b
	jr nz,lba1c
	bit 3,b
	jp nz,lba4f
	ret
.lba1c
	bit 3,b
	jp nz,lba64
	and #f0
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,lba3e
	ld hl,lb82c
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp lba78
.lba3e
	ld hl,lb82c
	call lba49
	ld b,#00
	jp lba82
.lba49
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.lba4f
	ld a,c
	ld (lb84b),a
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,lba60
	cpl
	inc a
.lba60
	ld (lb844),a
	ret
.lba64
	and #e0
	bit 4,b
	jr z,lba6e
	ld (lb862),a
	ret
.lba6e
	rlca
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,lba82
.lba78
	ld d,#00
	ld e,c
	ld hl,lb841
	add hl,de
	dec hl
	ld (hl),b
	ret
.lba82
	ld hl,lb841
	jp lba49
.lba88
	ld hl,lb844
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(lb84b)
	ld ix,lb82f
	ld hl,lb85f
	cp d
	jr z,lbaa8
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp lbabc
.lbaa8
	call lbabc
	inc ix
	inc ix
	ld hl,lb860
	call lbabc
	inc ix
	inc ix
	ld hl,lb861
.lbabc
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,lb7ae
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	push hl
	pop de
	sra h
	rr l
	push hl
	sra h
	rr l
	sra h
	rr l
	add hl,de
	add hl,de
	pop de
	add hl,de
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.lbaed
	xor c
	rr h
	rr l
	rr a
	djnz lbaed
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.lbaff
	ld hl,lb82f
	ld de,lb845
	ld b,#03
.lbb07
	ld a,(hl)
	push hl
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	add hl,de
	jr nc,lbb16
	inc hl
.lbb16
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz lbb07
	ret
.lbb22
	ld hl,lb82f
	ld a,(lb862)
	ld c,a
	bit 5,c
	call nz,lbb3a
	inc hl
	inc hl
	bit 6,c
	call nz,lbb3a
	inc hl
	inc hl
	bit 7,c
	ret z
.lbb3a
	ld a,(lb83d)
	ld e,(hl)
	inc hl
	ld d,(hl)
	rrca
	rrca
	rrca
	dec de
	dec de
	jr nc,lbb4b
	inc de
	inc de
	inc de
	inc de
.lbb4b
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.lbb4f
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ret
.lbb70
	ld hl,lb82f
	ld d,#00
	add hl,de
	ld d,e
.lbb77
	ld e,(hl)
	inc hl
	call lbb4f
	djnz lbb77
	ret
.lbb7f
	ld hl,lb837
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	cp #00
	ret z
	push de
	ld hl,lb863
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(lb83d)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld b,(hl)
	cp b
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jp lbb70
.lbbb0
	db #02,#03,#04,#05,#06,#07,#08,#09
	db #0a,#03,#04,#05,#06,#07,#08,#0b
	db #0c,#02,#0d,#0e,#0f,#10,#11,#12
	db #13,#14,#15,#16,#17,#18,#19,#1a
	db #0c,#03,#04,#05,#06,#07,#08,#09
	db #0a,#03,#04,#05,#06,#07,#08,#0b
	db #0c,#02,#0d,#0e,#0f,#10,#11,#12
	db #13,#14,#15,#16,#17,#18,#19,#1a
	db #0c,#03,#04,#05,#06,#07,#08,#09
	db #0a,#03,#04,#05,#06,#07,#08,#0b
	db #0c,#1b,#0d,#0e,#0f,#10,#11,#12
	db #13,#14,#15,#16,#17,#18,#19,#1a
	db #0c,#1c,#ff
.lbc13
	db #1d,#1d,#1d,#1d,#1e,#1e,#1d,#1d
	db #1f,#1f,#1d,#1d,#1e,#1e,#1d,#1f
	db #1d,#1d,#20,#20,#21,#21,#1f,#1f
	db #1d,#1d,#22,#22,#1e,#1e,#1d,#1f
	db #1d,#1d,#1d,#1d,#1e,#1e,#1d,#1d
	db #1f,#1f,#1d,#1d,#1e,#1e,#1d,#1f
	db #1d,#1d,#20,#20,#21,#21,#1f,#1f
	db #1d,#1d,#22,#22,#1e,#1e,#1d,#1f
	db #1d,#1d,#1d,#1d,#1e,#1e,#1d,#1d
	db #1f,#1f,#1d,#1d,#1e,#1e,#1d,#1f
	db #1d,#1d,#23,#23,#24,#24,#1f,#1f
	db #1d,#1d,#22,#22,#1e,#1e,#1d,#1f
	db #25,#26,#ff
.lbc76
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #27,#28,#29,#2a,#2b,#2c,#2d,#2e
	db #2f,#30,#31,#31,#32,#33,#34,#35
	db #2e,#02,#36,#36,#36,#36,#10,#10
	db #10,#10,#37,#37,#38,#38,#39,#3a
	db #3b,#3c,#34,#3d,#3e,#3f,#40,#41
	db #3a,#42,#43,#44,#45,#39,#46,#47
	db #48,#49,#36,#36,#36,#36,#10,#10
	db #10,#10,#15,#16,#38,#38,#39,#4a
	db #4b,#2e,#ff
.lbcd9
	db #4c,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#4d,#4e,#4d,#4e,#4d,#4e,#01
	db #4f,#50,#01,#01,#01,#01,#01,#01
	db #4f,#50,#51,#01,#01,#01,#52,#01
	db #01,#01,#50,#01,#01,#01,#52,#01
	db #01,#53,#4e,#4d,#4e,#4d,#4e,#01
	db #01,#54,#55,#01,#01,#01,#01,#01
	db #4f,#56,#57,#01,#01,#01,#58,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#ff
.lbd3c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#18,#35,#1b,#35
	db #1f,#1f,#1f,#1f,#1f,#1f,#1b,#1b
	db #18,#18,#18,#18,#1d,#35,#20,#35
	db #24,#24,#24,#24,#24,#24,#20,#20
	db #1d,#1d,#1d,#1d,#1f,#35,#20,#35
	db #1f,#1f,#1f,#1f,#1f,#1f,#1d,#1d
	db #1b,#1b,#1b,#1b,#1d,#1d,#1d,#1d
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1b,#1b,#1b,#1b
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #16,#16,#16,#16,#16,#16,#1a,#1a
	db #1d,#1d,#1d,#1d,#20,#20,#20,#20
	db #1f,#1f,#1f,#1d,#1b,#1b,#1d,#1d
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
	db #13,#13,#13,#13,#13,#13,#17,#17
	db #1a,#1a,#1a,#1a,#1d,#1d,#1d,#1d
	db #1b,#1b,#1b,#1a,#18,#18,#1a,#1a
	db #1b,#1b,#1b,#1b,#1b,#35,#35,#35
	db #1c,#1c,#1c,#1c,#1c,#1c,#1f,#1f
	db #22,#22,#22,#22,#25,#25,#25,#25
	db #20,#20,#20,#1f,#1d,#1d,#1f,#1f
	db #20,#20,#20,#20,#1f,#35,#1d,#35
	db #1b,#1b,#1b,#1b,#1b,#35,#1f,#35
	db #1a,#1a,#1a,#1a,#1a,#35,#1f,#35
	db #35,#35,#35,#35,#35,#35,#0c,#35
	db #18,#35,#35,#35,#35,#35,#35,#35
	db #00,#35,#0c,#0c,#00,#35,#0c,#35
	db #05,#35,#11,#11,#05,#35,#11,#35
	db #07,#35,#13,#13,#07,#35,#13,#35
	db #0a,#35,#16,#16,#0a,#35,#16,#35
	db #03,#35,#0f,#0f,#03,#35,#0f,#35
	db #04,#35,#10,#10,#04,#35,#10,#35
	db #0a,#35,#35,#35,#0a,#35,#35,#35
	db #03,#35,#35,#35,#03,#35,#35,#35
	db #00,#35,#0c,#0c,#00,#35,#0c,#0c
	db #00,#35,#36,#35,#36,#35,#36,#35
	db #35,#35,#35,#35,#24,#35,#24,#24
	db #24,#35,#35,#35,#18,#35,#1b,#35
	db #24,#26,#27,#26,#24,#26,#27,#26
	db #24,#35,#35,#35,#1d,#35,#20,#35
	db #29,#2b,#2c,#2b,#29,#2b,#2c,#2b
	db #29,#35,#35,#35,#1f,#35,#20,#35
	db #24,#26,#27,#24,#29,#27,#26,#27
	db #24,#35,#35,#35,#35,#35,#35,#35
	db #2b,#2c,#2b,#29,#2b,#2c,#2b,#29
	db #2b,#35,#29,#35,#27,#35,#26,#35
	db #24,#35,#24,#24,#24,#35,#35,#35
	db #29,#2b,#2c,#29,#2e,#35,#2c,#35
	db #29,#27,#29,#2b,#29,#35,#35,#35
	db #30,#2b,#27,#24,#30,#2b,#27,#24
	db #23,#24,#26,#23,#2b,#29,#27,#26
	db #22,#22,#22,#22,#22,#22,#22,#22
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #26,#26,#26,#26,#26,#26,#26,#26
	db #24,#24,#24,#24,#24,#24,#1f,#1f
	db #18,#18,#18,#18,#18,#35,#35,#35
	db #30,#2f,#30,#32,#33,#32,#30,#33
	db #2c,#2b,#29,#2b,#2c,#2b,#2c,#2e
	db #2c,#35,#2b,#35,#29,#35,#27,#35
	db #26,#35,#26,#35,#26,#35,#27,#26
	db #24,#24,#24,#24,#27,#27,#27,#27
	db #26,#27,#28,#29,#2a,#2b,#2c,#2f
	db #27,#27,#27,#27,#27,#27,#26,#26
	db #24,#24,#24,#24,#1d,#35,#20,#35
	db #27,#27,#27,#27,#27,#27,#29,#29
	db #30,#2b,#27,#24,#30,#24,#27,#30
	db #2f,#2e,#2f,#30,#32,#30,#2f,#32
	db #30,#2b,#27,#24,#1f,#1b,#18,#13
	db #0f,#0c,#07,#03,#00,#35,#0c,#35
	db #07,#0b,#0e,#11,#13,#17,#1a,#1f
	db #24,#27,#2b,#30,#33,#32,#30,#2b
	db #8e,#b5,#6f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#6d,#00,#00,#00
	db #c5,#00,#00,#00,#00,#00,#00,#00
	db #3c,#00,#00,#00,#00,#00,#00,#00
	db #1c,#00,#00,#00,#00,#00,#00,#00
	db #87,#00,#00,#00,#00,#00,#00,#00
	db #9c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#6d,#cf,#00,#1c
	db #2b,#2b,#2b,#2b,#2b,#2b,#6b,#00
	db #b7,#00,#00,#00,#00,#00,#00,#00
	db #1c,#00,#00,#00,#00,#00,#8c,#00
	db #b4,#00,#00,#00,#00,#00,#00,#00
	db #8e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#de,#3f
;
.music_info
	db "Tarzan (1986)(Martech)()",0
	db "",0

	read "music_end.asm"
