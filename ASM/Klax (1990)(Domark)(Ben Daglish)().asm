; Music of Klax (1990)(Domark)(Ben Daglish)()
; Ripped by Megachur the 15/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KLAX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #5800
FIRST_THEME				equ 0
LAST_THEME				equ 7

	read "music_header.asm"

.l2eac
.music_end
	db #00
;
.stop_music
;
	xor a
	ld (l2eac),a
	jp l5be2
;
; init sound effects
;
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l60eb
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l5b28
	call l5b5e
	set 7,(ix+#11)
	ret
.l5835 equ $ + 7
.l582f equ $ + 1
.l582e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l583d equ $ + 7
.l583b equ $ + 5
.l583a equ $ + 4
.l5839 equ $ + 3
.l5838 equ $ + 2
.l5837 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5844 equ $ + 6
.l5843 equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l584d equ $ + 7
.l584c equ $ + 6
.l584a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5852 equ $ + 4
.l5850 equ $ + 2
.l584f equ $ + 1
.l584e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5859 equ $ + 3
.l5858 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l5865 equ $ + 7
.l5864 equ $ + 6
.l5863 equ $ + 5
.l5862 equ $ + 4
.l5861 equ $ + 3
.l585f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l586d equ $ + 7
.l5867 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	push af
	call l5be2
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l5f2b
	add l
	ld l,a
	jr nc,l5896
	inc h
.l5896
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l582f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5844),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5859),de
	xor a
	ld (l5838),a
	ld (l584d),a
	ld (l5862),a
	ld (l583d),a
	ld (l5852),a
	ld (l5867),a
	cpl
	ld (l5839),a
	ld (l584e),a
	ld (l5863),a
	ld a,#01
	ld (l5837),a
	ld (l584c),a
	ld (l5861),a
	ld (l583a),a
	ld (l584f),a
	ld (l5864),a
	ld hl,l586d
	ld bc,#030a
.l58e5
	xor a
.l58e6
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l58e6
	djnz l58e5
	ld hl,l603d
	ld (l5835),hl
	ld (l584a),hl
	ld (l585f),hl
	ld a,#ff
	ld (l583b),a
	ld (l5850),a
	ld (l5865),a
	ld (l2eac),a
	ret
;
.play_music
;
	call l5c1a
	ld a,(l2eac)
	and a
	ret z
	ld a,(l583b)
	or a
	jr z,l5925
	ld a,(l5850)
	or a
	jr z,l5925
	ld a,(l5865)
	or a
.l5925
	ld (l2eac),a
	jr nz,l5938
	ld a,(l5b27)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l2eac),a
	ret
.l5938
	ld iy,l582e
	ld ix,l5b28
	call l5956
	ld iy,l5843
	ld ix,l5b3a
	call l5956
	ld iy,l5858
	ld ix,l5b4c
.l5956
	call l5a97
	ld a,(iy+#0b)
	and a
	jr z,l59db
.l595f
	dec (iy+#09)
	jr z,l5976
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l59db
.l5976
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l5980
	ld a,(hl)
	cp #80
	jr c,l59bb
	cp #fe
	jr nz,l5992
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l5980
.l5992
	cp #ff
	jr nz,l599b
	xor a
	ld (iy+#0d),a
	ret
.l599b
	cp #c0
	jr nc,l59a8
	and #1f
.l59a3 equ $ + 2
	ld (iy+#09),a
	inc hl
	jp l5980
.l59a8
	and #07
	add (iy+#00)
	ld de,l586d
	add e
	ld e,a
	jr nc,l59b5
	inc d
.l59b5
	inc hl
	ldi
	jp l5980
.l59bb
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l5f0b
	add hl,bc
	ld e,(hl)
	ld hl,l5f1b
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l59e1
.l59db
	ld e,(iy+#05)
	ld d,(iy+#06)
.l59e1
	dec (iy+#0c)
	jr z,l59f3
	ld a,(de)
	cp #80
	call nc,l5a5d
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l59f3
	ld a,(de)
	cp #80
	jr c,l5a04
	call l5a5d
	ld a,(iy+#0b)
	and a
	jr z,l59f3
	jp l595f
.l5a04
	cp #7f
	jr z,l5a50
	cp #7e
	jr nz,l5a15
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l5a29
.l5a15
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l611f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l5a29
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
	jp l5b5e
.l5a50
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l5a5d
	ld a,(de)
	cp #88
	jr nc,l5a7b
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l586d
	add hl,bc
	ld c,(hl)
	ld hl,l603d
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l5a7b
	cp #ff
	jr nz,l5a84
	ld (iy+#0b),#ff
	ret
.l5a84
	cp #c0
	jr nc,l5a8f
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l5a8f
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l5a97
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l5aab
	res 7,(iy+#14)
	ret
.l5aab
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l5adf
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l5adf
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l5ace
	inc h
	ld (iy+#11),h
.l5ace
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l5b14
.l5adf
	ld hl,l59a3
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l5af9
	bit 6,(iy+#14)
	jr nz,l5af9
	ld (iy+#13),#01
	ret
.l5af9
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
.l5b14
	add a
	ld hl,l611f
	add l
	ld l,a
	jr nc,l5b1d
	inc h
.l5b1d
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l5b2d equ $ + 6
.l5b2c equ $ + 5
.l5b2b equ $ + 4
.l5b28 equ $ + 1
.l5b27
	db #bf,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5b3e equ $ + 7
.l5b3d equ $ + 6
.l5b3a equ $ + 3
.l5b39 equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l5b3f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5b4c equ $ + 5
.l5b4b equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.l5b51 equ $ + 2
.l5b50 equ $ + 1
.l5b4f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5b5d equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00
.l5b5e
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
	jr nz,l5b82
	ld a,#01
.l5b82
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l5b27)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l5bab
	and (ix+#00)
.l5bab
	bit 1,c
	jr z,l5bb2
	and (ix+#01)
.l5bb2
	ld (l5b27),a
	bit 2,c
	jr nz,l5bc3
	ld hl,l5d10
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5bc3
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call l5dc8
	ld a,(iy+#04)
	ld e,#0b
	call l5dc8
	inc e
	xor a
	call l5dc8
	ld (ix+#05),#ff
	ret
.l5be2
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(l5b27)
	or #3f
	ld (l5b27),a
	call l5dc8
	xor a
	inc e
	call l5dc8
	inc e
	call l5dc8
	inc e
	call l5dc8
	ld a,#01
	inc e
	call l5dc8
	inc e
	xor a
	call l5dc8
	inc e
	call l5dc8
	ld (l5b39),a
	ld (l5b4b),a
	ld (l5b5d),a
	ret
.l5c1a
	ld a,(l5b27)
	and #3f
	cp #3f
	ret z
	ld ix,l5b28
	call l5cde
	ld ix,l5b3a
	call l5cde
	ld ix,l5b4c
	call l5cde
	ld ix,l5b28
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(l5b27)
	call l5dc8
	ld e,#00
	ld a,(l5b2b)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l5c58
	ld d,a
.l5c58
	call l5dc8
	inc e
	ld a,(l5b2c)
	adc (ix+#0a)
	call l5dc8
	inc e
	ld a,(l5b3d)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l5c74
	ld d,a
.l5c74
	call l5dc8
	inc e
	ld a,(l5b3e)
	adc (ix+#1c)
	call l5dc8
	inc e
	ld a,(l5b4f)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l5c90
	ld d,a
.l5c90
	call l5dc8
	inc e
	ld a,(l5b50)
	adc (ix+#2e)
	call l5dc8
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call l5dc8
	ld e,#08
	ld a,(l5cdd)
	ld d,a
	ld a,(l5b2d)
	cp d
	jr c,l5cb2
	ld a,d
.l5cb2
	srl a
	srl a
	srl a
	call l5dc8
	inc e
	ld a,(l5b3f)
	cp d
	jr c,l5cc3
	ld a,d
.l5cc3
	srl a
	srl a
	srl a
	call l5dc8
	inc e
	ld a,(l5b51)
	cp d
	jr c,l5cd4
	ld a,d
.l5cd4
	srl a
	srl a
	srl a
	jp l5dc8
.l5cdd
	ld a,a
.l5cde
	ld a,(l5b27)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l5cff
	cp #ff
	jr z,l5cff
	dec (ix+#06)
.l5cff
	call l5d86
	bit 2,(iy+#09)
	jp nz,l5d7f
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l5d10
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l5d1f
	ld (ix+#05),a
	ret
.l5d1f
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l5d2f
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5d2f
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l5d41
	cp (iy+#02)
	jr c,l5d41
	ld (ix+#05),a
	ret
.l5d41
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l5d51
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5d51
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l5d60
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l5d60
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l5d6d
	ld (ix+#05),a
	ret
.l5d6d
	ld (ix+#05),#00
	ld a,(l5b27)
	or (ix+#02)
	ld (l5b27),a
	res 7,(ix+#11)
	ret
.l5d7f
	ld a,(ix+#06)
	and a
	ret nz
	jr l5d6d
.l5d86
	ld a,(ix+#07)
	and a
	jr z,l5d93
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l5d93
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
	jp p,l5db7
	ld (ix+#07),#ff
	ret
.l5db7
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
.l5dc8
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
.l5de3
	db #85,#7f,#12,#0e,#12,#0e,#0c,#10
	db #06,#12,#0c,#10,#06,#0e,#24,#0b
	db #0c,#0e,#12,#0b,#06,#0e,#12,#0e
	db #0c,#10,#06,#12,#0c,#13,#06,#15
	db #06,#17,#06,#15,#06,#12,#06,#15
	db #06,#12,#06,#10,#06,#12,#06,#10
	db #06,#0e,#06,#10,#06,#0e,#06,#0b
	db #06,#09,#06,#0b,#06,#0e,#48,#86
.l5e26 equ $ + 3
	db #0e,#60,#ff,#80,#0e,#06,#12,#06
	db #15,#06,#1a,#06,#15,#06,#12,#06
.l5e38 equ $ + 5
.l5e34 equ $ + 1
	db #ff,#86,#0e,#60,#ff,#80,#1d,#0c
	db #1d,#0c,#29,#0c,#1d,#0c,#1d,#0c
.l5e4a equ $ + 7
	db #1d,#0c,#29,#0c,#1d,#0c,#ff,#80
	db #0e,#0c,#0e,#06,#0e,#12,#0e,#06
.l5e5a equ $ + 7
.l5e56 equ $ + 3
	db #0e,#06,#ff,#85,#1d,#c0,#ff,#85
.l5e5e equ $ + 3
	db #0e,#c0,#ff,#85,#06,#0c,#0d,#0c
	db #0d,#0c,#0d,#0c,#16,#0c,#16,#0c
	db #03,#0c,#0a,#0c,#0a,#0c,#0a,#0c
	db #12,#0c,#12,#0c,#0b,#0c,#06,#0c
	db #06,#0c,#06,#0c,#0f,#0c,#0f,#0c
	db #01,#0c,#08,#0c,#08,#0c,#08,#0c
.l5e90 equ $ + 5
	db #11,#0c,#11,#0c,#ff,#85,#7f,#06
	db #0a,#0c,#0a,#0c,#12,#0c,#12,#0c
	db #12,#0c,#19,#0c,#06,#60,#06,#0c
	db #0f,#0c,#0f,#0c,#0f,#0c,#16,#0c
	db #03,#0c,#03,#0c,#0b,#0c,#0b,#0c
	db #0b,#0c,#12,#0c,#05,#0c,#05,#0c
	db #0d,#0c,#0d,#0c,#0d,#0c,#14,#06
.l5ec4 equ $ + 1
	db #ff,#85,#12,#06,#16,#06,#19,#06
.l5ece equ $ + 3
	db #1e,#30,#ff,#85,#12,#06,#16,#06
	db #19,#06,#16,#06,#19,#06,#1e,#06
.l5edc equ $ + 1
	db #ff,#87,#12,#02,#13,#02,#14,#02
.l5eea equ $ + 7
	db #15,#02,#16,#02,#17,#02,#ff,#81
.l5eef equ $ + 4
	db #12,#06,#06,#ff,#87,#29,#02,#27
	db #02,#25,#02,#23,#02,#22,#02,#20
.l5eff equ $ + 4
	db #02,#1e,#02,#ff,#81,#1e,#06,#ff
.l5f03
	db #81,#7f,#c0,#7f,#90,#7f,#c0,#ff
.l5f0b
	db l5de3,l5e26,l5e34,l5e38
	db l5e4a,l5e56,l5e5a,l5e5e
	db l5e90,l5ec4,l5ece,l5edc
	db l5eea,l5eef,l5eff,l5f03
;	db #e3,#26,#34,#38,#4a,#56,#5a,#5e
;	db #90,#c4,#ce,#dc,#ea,#ef,#ff,#03
.l5f1b
	db l5de3/#100,l5e26/#100,l5e34/#100,l5e38/#100
	db l5e4a/#100,l5e56/#100,l5e5a/#100,l5e5e/#100
	db l5e90/#100,l5ec4/#100,l5ece/#100,l5edc/#100
	db l5eea/#100,l5eef/#100,l5eff/#100,l5f03/#100
;	db #5d,#5e,#5e,#5e,#5e,#5e,#5e,#5e
;	db #5e,#5e,#5e,#5e,#5e,#5e,#5e,#5f
.l5f2b
	dw l5f73,l5f77,l5f8d
	dw l5f91,l5f9e,l5fae
	dw l5fbe,l5fc2,l5fc6
	dw l5fc8,l5fcc,l5fd0
	dw l5fd4,l5fd8,l5fdc
	dw l5fe0,l5fe4,l5fe8
	dw l5fec,l5ff0,l5ff4
	dw l5ff8,l5ffc,l6000
	dw l6004,l6008,l600c
	dw l6010,l6014,l6018
	dw l601c,l6023,l602a
	dw l6031,l6035,l6039
.l5f77 equ $ + 4
.l5f73
	db #fe,#17,#00,#ff,#fe,#ff,#01,#01
	db #fe,#04,#01,#01,#fe,#06,#01,#01
	db #fe,#04,#01,#01,#fe,#ff,#01,#01
.l5f91 equ $ + 6
.l5f8d equ $ + 2
	db #02,#ff,#fe,#0b,#00,#ff,#fe,#ff
	db #03,#fe,#fe,#03,#fe,#fc,#03,#fe
.l5f9e equ $ + 3
	db #ff,#05,#ff,#fe,#ff,#04,#04,#fe
	db #fd,#04,#04,#fe,#fb,#04,#04,#fe
.l5fae equ $ + 3
	db #ff,#06,#ff,#fe,#0b,#04,#04,#fe
	db #09,#04,#04,#fe,#07,#04,#04,#fe
.l5fc2 equ $ + 7
.l5fbe equ $ + 3
	db #ff,#06,#ff,#fe,#0b,#07,#ff,#fe
.l5fc8 equ $ + 5
.l5fc6 equ $ + 3
	db #0b,#08,#ff,#0f,#ff,#fe,#ff,#09
.l5fd0 equ $ + 5
.l5fcc equ $ + 1
	db #ff,#fe,#0b,#09,#ff,#fe,#ff,#09
.l5fd8 equ $ + 5
.l5fd4 equ $ + 1
	db #ff,#fe,#02,#09,#ff,#fe,#0e,#09
.l5fe0 equ $ + 5
.l5fdc equ $ + 1
	db #ff,#fe,#02,#09,#ff,#fe,#04,#09
.l5fe8 equ $ + 5
.l5fe4 equ $ + 1
	db #ff,#fe,#10,#09,#ff,#fe,#04,#09
.l5ff0 equ $ + 5
.l5fec equ $ + 1
	db #ff,#fe,#ff,#0a,#ff,#fe,#0b,#0a
.l5ff8 equ $ + 5
.l5ff4 equ $ + 1
	db #ff,#fe,#ff,#0a,#ff,#fe,#ff,#0a
.l6000 equ $ + 5
.l5ffc equ $ + 1
	db #ff,#fe,#03,#0a,#ff,#fe,#ff,#0a
.l6008 equ $ + 5
.l6004 equ $ + 1
	db #ff,#fe,#0f,#0b,#ff,#fe,#0d,#0b
.l6010 equ $ + 5
.l600c equ $ + 1
	db #ff,#fe,#0b,#0b,#ff,#fe,#00,#0c
.l6018 equ $ + 5
.l6014 equ $ + 1
	db #ff,#fe,#03,#0c,#ff,#fe,#04,#0c
.l601c equ $ + 1
	db #ff,#fe,#07,#0d,#fe,#fb,#0d,#ff
.l602a equ $ + 7
.l6023
	db #fe,#06,#0d,#fe,#fa,#0d,#ff,#fe
.l6031 equ $ + 6
	db #05,#0d,#fe,#f9,#0d,#ff,#fe,#00
.l6039 equ $ + 6
.l6035 equ $ + 2
	db #0e,#ff,#fe,#03,#0e,#ff,#fe,#04
.l603d equ $ + 2
	db #0e,#ff,#7f,#fc,#00,#ff,#7f,#00
	db #01,#01,#00,#01,#7f,#f6,#00,#ff
	db #7f,#00,#01,#02,#01,#03,#7f,#ff
	db #00,#fc,#7f,#00,#03,#05,#01,#03
	db #7f,#fe,#00,#fe,#7f,#00,#04,#04
	db #02,#03,#7f,#f8,#00,#ff,#7f,#00
	db #00,#00,#01,#01,#7f,#ff,#00,#ff
	db #7f,#00,#03,#02,#00,#01,#7f,#f6
	db #00,#ff,#7f,#00,#00,#00,#00,#01
	db #7f,#ec,#00,#ff,#6e,#00,#01,#02
	db #03,#01,#03,#00,#00,#ff,#64,#00
	db #02,#02,#03,#03,#0a,#ff,#63,#ff
	db #7f,#00,#03,#01,#03,#03,#7f,#fa
	db #50,#ff,#7f,#00,#03,#01,#00,#01
	db #89,#61,#00,#00,#00,#00,#00,#00
	db #89,#21,#00,#00,#00,#00,#00,#00
	db #91,#1a,#00,#00,#00,#00,#00,#00
	db #91,#22,#00,#00,#00,#00,#00,#00
	db #89,#21,#00,#00,#00,#00,#00,#00
	db #89,#19,#00,#00,#00,#00,#00,#00
	db #89,#29,#00,#00,#00,#00,#00,#00
	db #89,#49,#00,#00,#00,#00,#00,#00
.l60eb
	db #0e,#fe,#01,#ff,#7f,#00,#04,#11
	db #00,#01,#53,#00,#28,#7f,#fc,#01
	db #ff,#7f,#00,#00,#1b,#00,#03,#07
	db #00,#14,#7f,#f5,#01,#ff,#7f,#00
	db #00,#5c,#00,#03,#96,#01,#0a,#7f
	db #fe,#01,#ff,#7f,#05,#04,#02,#00
	db #01,#68,#00,#28
.l611f
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
	db #00
;
; init #5885 0-7
; play #590d
; stop #5be2
;
.music_info
	db "Klax (1990)(Domark)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
