@TODO multiple music see org after !

30/05/2019
org #4000
jp l4009	; Hard Techno
jp l409d
jp l4081
.l4009
xor a
ld hl,l45b4
call l407a
ld hl,l45e2
call l407a
ld hl,l4610
call l407a
ld ix,l45b0
ld iy,l463a
ld de,#002e
ld b,#03
.l4029
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l4029
ld hl,l44c9
ld (hl),#04
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l44c5),hl
ld (l44c7),hl
ld a,#0c
ld c,d
call l44a5
ld a,#0d
ld c,d
jp l44a5
.l407a
ld b,#2a
.l407c
ld (hl),a
inc hl
djnz l407c
ret
.l4081
ld a,#07
ld c,#3f
call l44a5
ld a,#08
ld c,#00
call l44a5
ld a,#09
ld c,#00
call l44a5
ld a,#0a
ld c,#00
jp l44a5
.l409d
ld hl,l44cb
dec (hl)
ld ix,l45b0
ld bc,l45be
call l413f
ld ix,l45de
ld bc,l45ec
call l413f
ld ix,l460c
ld bc,l461a
call l413f
ld hl,l44c4
ld de,l44cb
ld b,#06
call l411c
ld b,#07
call l411c
ld b,#0b
call l411c
ld b,#0d
call l411c
ld de,l44cb
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l45cf
call l40f5
ld hl,l45fd
call l40f5
ld hl,l462b
.l40f5
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l410a
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l410a
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l411c
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l44a5
.l4127
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l44a5
.l413f
ld a,(l44cb)
or a
jp nz,l41f7
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l41f7
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l4127
or a
jp z,l41ec
ld r,a
and #7f
cp #10
jr c,l41c7
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l433f
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l41a0
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l41a0
rrca
ld c,a
ld hl,l4640
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l41bf
ld (ix+#1e),b
.l41bf
ld a,i
pop hl
ld d,b
and #0f
jr z,l41e0
.l41c7
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l44d0
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l41e0
ld a,d
or a
jr nz,l41ee
ld a,r
bit 7,a
ld a,#01
jr nz,l41ee
.l41ec
ld a,(hl)
inc hl
.l41ee
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l41f7
ld a,(ix+#17)
or a
jr nz,l420d
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l420d
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l4223
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l4223
ld a,(ix+#0d)
or a
jr z,l4231
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l424f
.l4231
ld a,(ix+#1a)
or a
jp z,l4256
ld c,a
cp #03
jr nz,l423e
xor a
.l423e
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l424f
ld a,(ix+#18)
dec c
jr z,l424f
ld a,(ix+#19)
.l424f
add (ix+#07)
ld b,d
call l433f
.l4256
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l427e
dec (ix+#1b)
jr nz,l427e
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l42b6
.l427e
ld a,(ix+#29)
or a
jr z,l42b6
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l42ad
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l42a4
ld (ix+#29),#ff
jr l42ad
.l42a4
cp (ix+#2b)
jr nz,l42ad
ld (ix+#29),#01
.l42ad
ld b,d
or a
jp p,l42b3
dec b
.l42b3
ld c,a
jr l42c1
.l42b6
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l42c1
pop hl
bit 7,(ix+#14)
jr z,l42ca
ld h,d
ld l,d
.l42ca
add hl,bc
ld c,l
ld a,(ix+#01)
call l44a5
ld c,h
ld a,(ix+#02)
call l44a5
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l431d
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l430c
dec (ix+#09)
jr nz,l430c
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l4304
xor a
jr l4309
.l4304
cp #10
jr nz,l4309
dec a
.l4309
ld (ix+#1e),a
.l430c
ld a,b
sub (ix+#1e)
jr nc,l4313
xor a
.l4313
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l44a5
.l431d
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l44cc)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l433b
ld l,a
ld a,b
cpl
and h
ld h,a
.l433b
ld (l44cc),hl
ret
.l433f
ld hl,l44ee
cp #61
jr nc,l4349
add a
ld c,a
add hl,bc
.l4349
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l4353
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l4478
ld (ix+#1e),a
jp l41e0
.l4365
dec b
.l4366
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l4371
neg
.l4371
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l41e0
.l4387
dec b
jr l438b
.l438a
inc b
.l438b
call l4478
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l41e0
.l439a
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l445d
.l43ab
ld a,(hl)
inc hl
or a
jr z,l43cd
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l43cd
ld (ix+#29),a
jp l41e0
.l43d3
dec hl
ld a,(hl)
and #0f
ld (l44cf),a
inc hl
ld a,(hl)
inc hl
ld (l44ce),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l41e0
.l43ed
ld a,(hl)
or a
jr z,l43fe
call l447a
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l41e0
.l43fe
ld hl,#0101
ld (l44ca),hl
jp l41e0
.l4407
call l4478
ld (ix+#1e),a
jp l41e0
.l4410
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l4489
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l4489
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l41e0
.l4432
ld a,(hl)
inc hl
ld (l44c9),a
jp l41e0
.l443a
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l41e0
.l4459
call l4478
add a
.l445d
ld b,#00
ld c,a
push hl
ld hl,l46c0
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l41e0
.l4478
ld a,(hl)
inc hl
.l447a
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l4489
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l4640
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l44a5
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l44c4
ret
.l44cc equ $ + 7
.l44cb equ $ + 6
.l44ca equ $ + 5
.l44c9 equ $ + 4
.l44c7 equ $ + 2
.l44c5
db #00,#00,#00,#00,#00,#00,#00,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
db #38,#00,#00
.l44d0
dw l4353,l4366,l4365,l438a
dw l4387,l439a,l43ab,l43d3
dw l43ed,l43d3,l4407,l4410
dw l4432,l443a,l4459
.l44ee
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l45b4 equ $ + 4
.l45b0
db #08,#00,#01,#08,#00,#00,#00,#00
.l45be equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l45e2 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l4610
db #00,#00,#00,#00,#00,#00,#00,#00
.l461a equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
db #00,#00,#a0,#4a,#c1,#4a,#e2,#4a
.l4640
db #c1,#4b,#d2,#47,#12,#48,#60,#48
db #e0,#46,#20,#47,#40,#47,#00,#00
db #60,#47,#a0,#47,#40,#47,#00,#00
db #e0,#46,#c0,#47,#40,#47,#20,#00
db #e0,#46,#e0,#47,#40,#47,#20,#00
db #92,#00,#a5,#2d,#a5,#2d,#d3,#2d
db #00,#48,#40,#48,#60,#48,#00,#00
db #80,#48,#c0,#48,#40,#47,#00,#00
db #e0,#48,#20,#49,#40,#49,#00,#00
db #60,#49,#a0,#49,#c0,#49,#80,#00
db #e0,#49,#20,#4a,#40,#4a,#c0,#00
db #a4,#ff,#a4,#ff,#a4,#ff,#d2,#ff
db #e0,#46,#60,#4a,#80,#4a,#00,#00
db #a4,#ff,#a4,#ff,#a4,#ff,#d2,#ff
db #a4,#ff,#d2,#ff,#d2,#ff,#00,#00
db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
.l46c0
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0d,#0d,#0c
db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0d,#0c,#0c,#0b,#0b,#0b,#0b
db #0b,#0a,#0a,#0a,#0a,#0a,#0b,#0b
db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#00
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#0a,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#05,#00
db #00,#00,#40,#00,#80,#00,#c0,#00
db #00,#01,#40,#01,#80,#01,#c0,#01
db #00,#02,#40,#02,#80,#02,#c0,#02
db #00,#03,#40,#03,#80,#03,#c0,#03
db #00,#04,#40,#04,#80,#04,#c0,#04
db #00,#05,#40,#05,#80,#05,#c0,#05
db #00,#06,#40,#06,#80,#06,#c0,#06
db #00,#07,#40,#07,#80,#07,#c0,#07
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#09,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#03,#00
db #00,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#08,#08
db #07,#07,#06,#06,#05,#05,#04,#04
db #03,#03,#02,#02,#01,#01,#00,#00
db #00,#00,#30,#00,#60,#00,#90,#00
db #c0,#00,#f0,#00,#20,#01,#50,#01
db #80,#01,#b0,#01,#e0,#01,#10,#02
db #40,#02,#70,#02,#a0,#02,#d0,#02
db #00,#03,#20,#03,#40,#03,#60,#03
db #70,#03,#80,#03,#90,#03,#a0,#03
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
db #0a,#0a,#09,#09,#08,#07,#07,#06
db #06,#05,#05,#04,#04,#03,#03,#02
db #02,#00,#00,#00,#00,#00,#00,#00
db #04,#06,#07,#09,#0c,#11,#17,#1d
db #15,#10,#0c,#09,#06,#05,#04,#04
db #03,#03,#03,#02,#02,#02,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#03,#4b,#00,#69,#4b,#00,#b1
db #4b,#00,#b1,#4b,#00,#b1,#4b,#00
db #12,#4c,#00,#b1,#4b,#00,#12,#4c
db #00,#12,#4c,#00,#12,#4c,#80,#a0
db #4a,#00,#43,#4c,#00,#a9,#4c,#00
db #f1,#4c,#00,#f1,#4c,#00,#f1,#4c
db #00,#22,#4d,#00,#f1,#4c,#00,#22
db #4d,#00,#22,#4d,#00,#22,#4d,#80
db #c1,#4a,#00,#89,#4d,#00,#ef,#4d
db #00,#37,#4e,#00,#37,#4e,#00,#37
db #4e,#00,#b1,#4b,#00,#37,#4e,#00
db #b1,#4b,#00,#b1,#4b,#00,#b1,#4b
db #80,#e2,#4a,#44,#20,#02,#42,#20
db #02,#40,#20,#02,#3f,#20,#02,#3d
db #20,#02,#44,#20,#02,#42,#20,#02
db #40,#20,#02,#3f,#20,#02,#3d,#20
db #02,#3b,#20,#02,#39,#20,#02,#38
db #20,#02,#36,#20,#02,#34,#20,#02
db #3b,#20,#02,#39,#20,#02,#38,#20
db #02,#36,#20,#02,#34,#20,#02,#c4
db #20,#c2,#20,#c0,#20,#bf,#20,#bd
db #20,#c4,#20,#c2,#20,#c0,#20,#bf
db #20,#bd,#20,#bb,#20,#b9,#20,#b8
db #20,#b6,#20,#b4,#20,#bb,#20,#b9
db #20,#b8,#20,#b6,#20,#34,#20,#05
db #ff,#b4,#10,#b4,#10,#b6,#10,#b6
db #10,#b8,#10,#b8,#10,#b9,#10,#b9
db #10,#bb,#10,#bb,#10,#bd,#10,#bd
db #10,#bf,#10,#bf,#10,#c0,#10,#c0
db #10,#c2,#10,#c2,#10,#c4,#10,#c4
db #10,#b4,#10,#b6,#10,#b8,#10,#b9
db #10,#bb,#10,#bd,#10,#bf,#10,#c0
db #10,#c2,#10,#c4,#10,#b4,#40,#b8
db #40,#bb,#40,#bf,#40,#44,#40,#1e
db #ff,#3d,#60,#02,#2e,#a0,#02,#3d
db #60,#02,#2e,#a0,#02,#3d,#60,#02
db #2e,#a0,#02,#3d,#60,#02,#2e,#a0
db #02,#3d,#60,#02,#2e,#a0,#02,#3d
db #60,#02,#2e,#a0,#02,#3d,#60,#02
db #2e,#a0,#02,#3d,#60,#02,#2e,#a0
db #02,#3d,#60,#02,#2e,#a0,#02,#3d
db #60,#02,#2e,#a0,#02,#3d,#60,#02
db #2e,#a0,#02,#3d,#60,#02,#2e,#a0
db #02,#3d,#60,#02,#2e,#a0,#02,#3d
db #60,#02,#2e,#a0,#02,#3d,#60,#02
db #2e,#a0,#02,#3d,#60,#02,#2e,#a0
db #02,#ff,#3b,#80,#04,#3b,#80,#04
db #3b,#80,#04,#3b,#80,#04,#3b,#80
db #04,#3b,#80,#04,#3b,#80,#04,#3b
db #80,#04,#3b,#80,#04,#3b,#80,#04
db #3b,#80,#04,#3b,#80,#04,#3b,#80
db #04,#3b,#80,#04,#3b,#80,#04,#3b
db #80,#04,#ff,#50,#10,#02,#4e,#10
db #02,#4c,#10,#02,#4b,#10,#02,#49
db #10,#02,#44,#10,#02,#42,#10,#02
db #40,#10,#02,#3f,#10,#02,#3d,#10
db #02,#3b,#10,#02,#39,#10,#02,#38
db #10,#02,#36,#10,#02,#34,#10,#02
db #3b,#10,#02,#39,#10,#02,#38,#10
db #02,#36,#10,#02,#34,#10,#02,#c4
db #10,#c2,#10,#c0,#10,#bf,#10,#bd
db #10,#c4,#10,#c2,#10,#c0,#10,#bf
db #10,#bd,#10,#bb,#10,#b9,#10,#b8
db #10,#b6,#10,#b4,#10,#bb,#10,#b9
db #10,#b8,#10,#b6,#10,#34,#10,#05
db #ff,#9c,#30,#9c,#30,#9e,#30,#9e
db #30,#a0,#30,#a0,#30,#a1,#30,#a1
db #30,#a3,#30,#a3,#30,#a5,#30,#a5
db #30,#a7,#30,#a7,#30,#a8,#30,#a8
db #30,#aa,#30,#aa,#30,#ac,#30,#ac
db #30,#a8,#10,#aa,#10,#ac,#10,#ad
db #10,#af,#10,#b1,#10,#b3,#10,#b4
db #10,#b6,#10,#b8,#10,#b4,#40,#b8
db #40,#bb,#40,#bf,#40,#44,#40,#1e
db #ff,#38,#90,#04,#38,#90,#04,#38
db #90,#04,#38,#90,#04,#38,#90,#04
db #38,#90,#04,#38,#90,#04,#38,#90
db #04,#38,#90,#04,#38,#90,#04,#38
db #90,#04,#38,#90,#04,#38,#90,#04
db #38,#90,#04,#38,#90,#04,#38,#90
db #04,#ff,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#b8,#90,#38,#90,#02,#38
db #90,#02,#38,#90,#02,#38,#90,#02
db #ff,#44,#30,#02,#42,#30,#02,#40
db #30,#02,#3f,#30,#02,#3d,#30,#02
db #44,#40,#02,#42,#40,#02,#40,#40
db #02,#3f,#40,#02,#3d,#40,#02,#3b
db #30,#02,#39,#30,#02,#38,#30,#02
db #36,#30,#02,#34,#30,#02,#3b,#40
db #02,#39,#40,#02,#38,#40,#02,#36
db #40,#02,#34,#40,#02,#c4,#30,#c2
db #30,#c0,#30,#bf,#30,#bd,#30,#c4
db #40,#c2,#40,#c0,#40,#bf,#40,#bd
db #40,#bb,#30,#b9,#30,#b8,#30,#b6
db #30,#b4,#30,#bb,#40,#b9,#40,#b8
db #40,#b6,#40,#34,#40,#05,#ff,#b4
db #20,#b4,#20,#b6,#20,#b6,#20,#b8
db #20,#b8,#20,#b9,#20,#b9,#20,#bb
db #20,#bb,#20,#bd,#20,#bd,#20,#bf
db #20,#bf,#20,#c0,#20,#c0,#20,#c2
db #20,#c2,#20,#c4,#20,#c4,#20,#b4
db #70,#b6,#70,#b8,#70,#b9,#70,#bb
db #70,#bd,#70,#bf,#70,#c0,#70,#c2
db #70,#c4,#70,#b4,#10,#b8,#10,#bb
db #10,#bf,#10,#44,#40,#1e,#ff,#b9
db #80,#b9,#80,#bf,#c0,#b9,#80,#b9
db #80,#b9,#80,#bf,#c0,#b9,#80,#b9
db #80,#b9,#80,#b9,#80,#bf,#c0,#b9
db #80,#b9,#80,#bf,#c0,#b9,#80,#b9
db #80,#bf,#c0,#b9,#80,#b9,#80,#b9
db #80,#bf,#c0,#b9,#80,#b9,#80,#b9
db #80,#b9,#80,#bf,#c0,#b9,#80,#b9
db #80,#bf,#c0,#b9,#80,#b9,#80,#bf
db #c0,#b9,#80,#b9,#80,#b9,#80,#bf
db #c0,#b9,#80,#b9,#80,#b9,#80,#b9
db #80,#bf,#c0,#b9,#80,#b9,#80,#bf
db #c0,#b9,#80,#b9,#80,#bf,#c0,#b9
db #80,#b9,#80,#b9,#80,#bf,#c0,#b9
db #80,#b9,#80,#b9,#80,#b9,#80,#bf
db #c0,#b9,#80,#b9,#80,#bf,#c0,#bf
db #c0,#bf,#c0,#bf,#c0,#bf,#c0,#ff
nop
jp l4ec2	; Sose Me
jp l4f56
jp l4f3a
.l4ec2
xor a
ld hl,l546d
call l4f33
ld hl,l549b
call l4f33
ld hl,l54c9
call l4f33
ld ix,l5469
ld iy,l54f3
ld de,#002e
ld b,#03
.l4ee2
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l4ee2
ld hl,l5382
ld (hl),#05
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l537e),hl
ld (l5380),hl
ld a,#0c
ld c,d
call l535e
ld a,#0d
ld c,d
jp l535e
.l4f33
ld b,#2a
.l4f35
ld (hl),a
inc hl
djnz l4f35
ret
.l4f3a
ld a,#07
ld c,#3f
call l535e
ld a,#08
ld c,#00
call l535e
ld a,#09
ld c,#00
call l535e
ld a,#0a
ld c,#00
jp l535e
.l4f56
ld hl,l5384
dec (hl)
ld ix,l5469
ld bc,l5477
call l4ff8
ld ix,l5497
ld bc,l54a5
call l4ff8
ld ix,l54c5
ld bc,l54d3
call l4ff8
ld hl,l537d
ld de,l5384
ld b,#06
call l4fd5
ld b,#07
call l4fd5
ld b,#0b
call l4fd5
ld b,#0d
call l4fd5
ld de,l5384
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l5488
call l4fae
ld hl,l54b6
call l4fae
ld hl,l54e4
.l4fae
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l4fc3
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l4fc3
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l4fd5
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l535e
.l4fe0
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l535e
.l4ff8
ld a,(l5384)
or a
jp nz,l50b0
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l50b0
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l4fe0
or a
jp z,l50a5
ld r,a
and #7f
cp #10
jr c,l5080
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l51f8
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l5059
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l5059
rrca
ld c,a
ld hl,l54f9
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l5078
ld (ix+#1e),b
.l5078
ld a,i
pop hl
ld d,b
and #0f
jr z,l5099
.l5080
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l5389
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l5099
ld a,d
or a
jr nz,l50a7
ld a,r
bit 7,a
ld a,#01
jr nz,l50a7
.l50a5
ld a,(hl)
inc hl
.l50a7
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l50b0
ld a,(ix+#17)
or a
jr nz,l50c6
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l50c6
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l50dc
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l50dc
ld a,(ix+#0d)
or a
jr z,l50ea
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l5108
.l50ea
ld a,(ix+#1a)
or a
jp z,l510f
ld c,a
cp #03
jr nz,l50f7
xor a
.l50f7
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l5108
ld a,(ix+#18)
dec c
jr z,l5108
ld a,(ix+#19)
.l5108
add (ix+#07)
ld b,d
call l51f8
.l510f
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l5137
dec (ix+#1b)
jr nz,l5137
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l516f
.l5137
ld a,(ix+#29)
or a
jr z,l516f
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l5166
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l515d
ld (ix+#29),#ff
jr l5166
.l515d
cp (ix+#2b)
jr nz,l5166
ld (ix+#29),#01
.l5166
ld b,d
or a
jp p,l516c
dec b
.l516c
ld c,a
jr l517a
.l516f
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l517a
pop hl
bit 7,(ix+#14)
jr z,l5183
ld h,d
ld l,d
.l5183
add hl,bc
ld c,l
ld a,(ix+#01)
call l535e
ld c,h
ld a,(ix+#02)
call l535e
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l51d6
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l51c5
dec (ix+#09)
jr nz,l51c5
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l51bd
xor a
jr l51c2
.l51bd
cp #10
jr nz,l51c2
dec a
.l51c2
ld (ix+#1e),a
.l51c5
ld a,b
sub (ix+#1e)
jr nc,l51cc
xor a
.l51cc
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l535e
.l51d6
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l5385)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l51f4
ld l,a
ld a,b
cpl
and h
ld h,a
.l51f4
ld (l5385),hl
ret
.l51f8
ld hl,l53a7
cp #61
jr nc,l5202
add a
ld c,a
add hl,bc
.l5202
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l520c
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l5331
ld (ix+#1e),a
jp l5099
.l521e
dec b
.l521f
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l522a
neg
.l522a
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l5099
.l5240
dec b
jr l5244
.l5243
inc b
.l5244
call l5331
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l5099
.l5253
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l5316
.l5264
ld a,(hl)
inc hl
or a
jr z,l5286
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l5286
ld (ix+#29),a
jp l5099
.l528c
dec hl
ld a,(hl)
and #0f
ld (l5388),a
inc hl
ld a,(hl)
inc hl
ld (l5387),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l5099
.l52a6
ld a,(hl)
or a
jr z,l52b7
call l5333
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l5099
.l52b7
ld hl,#0101
ld (l5383),hl
jp l5099
.l52c0
call l5331
ld (ix+#1e),a
jp l5099
.l52c9
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l5342
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l5342
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l5099
.l52eb
ld a,(hl)
inc hl
ld (l5382),a
jp l5099
.l52f3
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l5099
.l5312
call l5331
add a
.l5316
ld b,#00
ld c,a
push hl
ld hl,l5579
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l5099
.l5331
ld a,(hl)
inc hl
.l5333
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l5342
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l54f9
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l535e
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l537d
ret
.l5385 equ $ + 7
.l5384 equ $ + 6
.l5383 equ $ + 5
.l5382 equ $ + 4
.l5380 equ $ + 2
.l537e
db #00,#00,#00,#00,#00,#00,#00,#00
.l5388 equ $ + 2
.l5387 equ $ + 1
db #38,#00,#00
.l5389
dw l520c,l521f,l521e,l5243
dw l5240,l5253,l5264,l528c
dw l52a6,l528c,l52c0,l52c9
dw l52eb,l52f3,l5312
.l53a7
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l546d equ $ + 4
.l5469
db #08,#00,#01,#08,#00,#00,#00,#00
.l5477 equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5488 equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5497 equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l549b equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l54a5 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l54b6 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l54c5 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l54c9
db #00,#00,#00,#00,#00,#00,#00,#00
.l54d3 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l54e4 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l54f3 equ $ + 2
db #00,#00,#19,#59,#3a,#59,#5b,#59
.l54f9
db #99,#55,#d9,#55,#f9,#55,#c0,#00
db #19,#56,#59,#56,#79,#56,#1a,#06
db #99,#56,#d9,#56,#f9,#56,#00,#00
db #19,#57,#59,#57,#79,#57,#80,#00
db #0b,#0f,#6b,#58,#ab,#58,#40,#4a
db #99,#56,#99,#57,#b9,#57,#9a,#06
db #a8,#3f,#6b,#55,#eb,#58,#80,#4a
db #8b,#0e,#7a,#3f,#7a,#3f,#ef,#30
db #d9,#57,#19,#58,#f9,#56,#40,#00
db #99,#56,#39,#58,#f9,#56,#00,#00
db #99,#56,#59,#58,#79,#58,#00,#00
db #5d,#0e,#5d,#0e,#5d,#0e,#d2,#ff
db #99,#56,#99,#58,#b9,#58,#00,#00
db #99,#56,#d9,#58,#f9,#58,#00,#00
db #5d,#0e,#8b,#0e,#8b,#0e,#00,#00
db #8b,#0e,#8b,#0e,#8b,#0e,#00,#00
.l5579
db #8b,#0e,#8b,#0e,#8b,#0e,#8b,#0e
db #8b,#0e,#8b,#0e,#8b,#0e,#8b,#0e
db #8b,#0e,#8b,#0e,#8b,#0e,#8b,#0e
db #8b,#0e,#8b,#0e,#8b,#0e,#8b,#0e
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#01,#00
db #01,#00,#01,#00,#ff,#ff,#ff,#ff
db #00,#00,#00,#00,#01,#00,#01,#00
db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
db #0b,#0b,#09,#08,#07,#06,#05,#04
db #04,#03,#02,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #07,#08,#09,#08,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0b,#09,#07,#05,#03,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#01,#01,#01,#01,#01,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
db #09,#08,#08,#08,#08,#08,#08,#08
db #08,#08,#08,#08,#07,#06,#05,#04
db #03,#02,#01,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
db #09,#09,#09,#08,#08,#07,#07,#06
db #05,#04,#03,#02,#01,#00,#00,#00
db #07,#08,#08,#08,#08,#08,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #04,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #04,#08,#0b,#0b,#0b,#0b,#0b,#0b
db #08,#04,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #10,#0c,#0c,#09,#09,#04,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#01,#02,#03,#04,#05,#06,#07
db #08,#09,#09,#0a,#0b,#0c,#0d,#0e
db #0d,#0c,#0b,#0a,#08,#05,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#7c,#59,#00,#7c,#59,#00,#7c
db #59,#00,#dd,#59,#00,#7c,#59,#00
db #7c,#59,#00,#10,#5a,#00,#10,#5a
db #00,#7c,#59,#00,#91,#5a,#80,#19
db #59,#00,#f2,#5a,#00,#f5,#5a,#00
db #f5,#5a,#00,#26,#5b,#00,#f5,#5a
db #00,#f5,#5a,#00,#f2,#5a,#00,#57
db #5b,#00,#b9,#5b,#00,#1b,#5c,#80
db #3a,#59,#00,#f2,#5a,#00,#f2,#5a
db #00,#7c,#5c,#00,#ad,#5c,#00,#7c
db #5c,#00,#08,#5d,#00,#59,#5d,#00
db #59,#5d,#00,#ba,#5d,#00,#f2,#5a
db #80,#5b,#59,#44,#20,#02,#42,#20
db #02,#44,#20,#02,#40,#20,#02,#44
db #20,#02,#3f,#20,#02,#44,#20,#02
db #3d,#20,#02,#44,#20,#02,#42,#20
db #02,#44,#20,#02,#40,#20,#02,#44
db #20,#02,#3f,#20,#02,#44,#20,#02
db #3d,#20,#02,#44,#20,#02,#42,#20
db #02,#44,#20,#02,#40,#20,#02,#44
db #20,#02,#3f,#20,#02,#44,#20,#02
db #3d,#20,#02,#44,#20,#02,#42,#20
db #02,#44,#20,#02,#40,#20,#02,#44
db #20,#02,#3f,#20,#02,#44,#20,#02
db #3d,#20,#02,#ff,#00,#02,#42,#50
db #04,#42,#50,#04,#42,#50,#04,#42
db #50,#04,#42,#50,#04,#42,#50,#04
db #42,#50,#04,#42,#50,#04,#42,#50
db #04,#42,#50,#04,#42,#50,#04,#42
db #50,#04,#42,#50,#04,#42,#50,#04
db #42,#50,#04,#42,#50,#02,#ff,#a9
db #c0,#a9,#00,#ab,#c0,#a9,#00,#b8
db #c0,#ab,#00,#b8,#c0,#ab,#00,#a9
db #c0,#ab,#00,#a9,#c0,#a9,#00,#b8
db #c0,#ab,#00,#b8,#c0,#a9,#00,#ab
db #c0,#ab,#00,#ab,#c0,#a9,#00,#b8
db #c0,#ab,#00,#b8,#c0,#a9,#00,#a9
db #c0,#ab,#00,#a9,#c0,#a9,#00,#b8
db #c0,#ab,#00,#b8,#c0,#a9,#00,#b6
db #c0,#ab,#00,#b8,#c0,#a9,#00,#ab
db #c0,#ab,#00,#b8,#c0,#a9,#00,#b8
db #c0,#ab,#00,#ab,#c0,#a9,#00,#ab
db #c0,#ab,#00,#a9,#c0,#a9,#00,#a9
db #c0,#ab,#00,#ab,#c0,#a9,#00,#ab
db #c0,#ab,#00,#b8,#c0,#a9,#00,#b8
db #c0,#ab,#00,#b8,#c0,#a9,#00,#ab
db #c0,#a9,#00,#ab,#c0,#ab,#00,#ff
db #50,#d0,#02,#4e,#d0,#02,#50,#d0
db #02,#4c,#d0,#02,#50,#d0,#02,#4b
db #d0,#02,#50,#d0,#02,#49,#d0,#02
db #50,#d0,#02,#4e,#d0,#02,#50,#d0
db #02,#4c,#d0,#02,#50,#d0,#02,#4b
db #d0,#02,#50,#d0,#02,#49,#d0,#02
db #50,#d0,#02,#4e,#d0,#02,#50,#d0
db #02,#4c,#d0,#02,#50,#d0,#02,#4b
db #d0,#02,#50,#d0,#02,#49,#d0,#02
db #50,#d0,#02,#4e,#d0,#02,#50,#d0
db #02,#4c,#d0,#02,#50,#d0,#02,#4b
db #d0,#02,#50,#d0,#02,#49,#d0,#02
db #ff,#00,#40,#ff,#44,#50,#04,#44
db #50,#04,#44,#50,#04,#44,#50,#04
db #44,#50,#04,#44,#50,#04,#44,#50
db #04,#44,#50,#04,#44,#50,#04,#44
db #50,#04,#44,#50,#04,#44,#50,#04
db #44,#50,#04,#44,#50,#04,#44,#50
db #04,#44,#50,#04,#ff,#2b,#c0,#04
db #38,#c0,#04,#2b,#c0,#04,#38,#c0
db #04,#38,#c0,#04,#29,#c0,#04,#2b
db #c0,#04,#38,#c0,#04,#2b,#c0,#04
db #38,#c0,#04,#29,#c0,#04,#2b,#c0
db #04,#38,#c0,#04,#29,#c0,#04,#38
db #c0,#04,#2b,#c0,#04,#ff,#00,#01
db #2a,#10,#02,#2a,#10,#02,#2c,#10
db #02,#2c,#10,#02,#29,#10,#02,#29
db #10,#02,#2c,#10,#02,#2b,#10,#02
db #2b,#10,#02,#2c,#10,#02,#29,#10
db #02,#29,#10,#02,#2c,#10,#02,#2c
db #10,#02,#2a,#10,#02,#2a,#10,#02
db #2a,#10,#02,#2b,#10,#02,#2b,#10
db #02,#29,#10,#02,#29,#10,#02,#2c
db #10,#02,#2c,#10,#02,#2a,#10,#02
db #2b,#10,#02,#2b,#10,#02,#29,#10
db #02,#36,#10,#02,#29,#10,#02,#2c
db #10,#02,#2c,#10,#02,#a9,#10,#ff
db #00,#01,#44,#20,#02,#42,#20,#02
db #44,#20,#02,#40,#20,#02,#44,#20
db #02,#3f,#20,#02,#44,#20,#02,#3d
db #20,#02,#44,#20,#02,#42,#20,#02
db #44,#20,#02,#40,#20,#02,#44,#20
db #02,#3f,#20,#02,#44,#20,#02,#3d
db #20,#02,#44,#20,#02,#42,#20,#02
db #44,#20,#02,#40,#20,#02,#44,#20
db #02,#3f,#20,#02,#44,#20,#02,#3d
db #20,#02,#44,#20,#02,#42,#20,#02
db #44,#20,#02,#40,#20,#02,#44,#20
db #02,#3f,#20,#02,#44,#20,#02,#bd
db #20,#ff,#50,#20,#02,#4e,#20,#02
db #50,#20,#02,#4c,#20,#02,#50,#20
db #02,#4b,#20,#02,#50,#20,#02,#49
db #20,#02,#50,#20,#02,#4e,#20,#02
db #50,#20,#02,#4c,#20,#02,#50,#20
db #02,#4b,#20,#02,#50,#20,#02,#49
db #20,#02,#50,#20,#02,#4e,#20,#02
db #50,#20,#02,#4c,#20,#02,#50,#20
db #02,#4b,#20,#02,#50,#20,#02,#49
db #20,#02,#50,#20,#02,#4e,#20,#02
db #50,#20,#02,#4c,#20,#02,#50,#20
db #02,#4b,#20,#02,#50,#20,#02,#49
db #20,#02,#ff,#36,#80,#04,#38,#80
db #04,#36,#80,#04,#36,#80,#04,#38
db #80,#04,#34,#80,#04,#38,#80,#04
db #38,#80,#04,#36,#80,#04,#38,#80
db #04,#34,#80,#04,#38,#80,#04,#34
db #80,#04,#34,#80,#04,#38,#80,#04
db #36,#80,#04,#ff,#30,#90,#02,#30
db #90,#02,#33,#90,#02,#33,#90,#02
db #30,#90,#02,#30,#90,#02,#31,#90
db #02,#31,#90,#02,#30,#90,#02,#30
db #90,#02,#2f,#90,#02,#2f,#90,#02
db #34,#90,#04,#30,#90,#02,#30,#90
db #02,#33,#90,#02,#33,#90,#02,#31
db #90,#02,#31,#90,#02,#30,#90,#02
db #30,#90,#02,#2f,#90,#02,#2f,#90
db #02,#30,#90,#02,#31,#90,#02,#30
db #90,#04,#30,#90,#02,#30,#90,#02
db #33,#90,#02,#33,#90,#02,#ff,#44
db #10,#02,#fe,#02,#44,#10,#02,#fe
db #02,#42,#10,#02,#fe,#02,#42,#10
db #02,#fe,#02,#44,#10,#02,#fe,#02
db #44,#10,#02,#fe,#02,#40,#10,#02
db #fe,#02,#40,#10,#02,#fe,#02,#44
db #10,#02,#fe,#02,#36,#10,#02,#fe
db #02,#39,#10,#02,#fe,#02,#34,#10
db #02,#fe,#02,#39,#10,#02,#fe,#02
db #36,#10,#02,#fe,#02,#39,#10,#02
db #fe,#02,#36,#10,#02,#fe,#02,#ff
db #44,#30,#02,#44,#50,#02,#44,#30
db #02,#42,#50,#02,#44,#30,#02,#44
db #50,#02,#44,#30,#02,#42,#50,#02
db #44,#30,#02,#44,#50,#02,#44,#30
db #02,#42,#50,#02,#44,#30,#02,#44
db #50,#02,#44,#30,#02,#40,#50,#02
db #44,#30,#02,#44,#50,#02,#44,#30
db #02,#3f,#50,#02,#44,#30,#02,#44
db #50,#02,#44,#30,#02,#3d,#50,#02
db #44,#30,#02,#44,#50,#02,#44,#30
db #02,#3b,#50,#02,#44,#30,#02,#44
db #50,#02,#44,#30,#02,#39,#50,#02
db #ff,#40,#50,#02,#29,#a0,#02,#42
db #50,#02,#29,#a0,#02,#38,#50,#02
db #29,#a0,#02,#39,#50,#02,#29,#a0
db #02,#3b,#50,#02,#29,#a0,#02,#3d
db #50,#02,#29,#a0,#02,#3f,#50,#02
db #29,#a0,#02,#40,#50,#02,#29,#a0
db #02,#42,#50,#02,#29,#a0,#02,#34
db #50,#02,#29,#a0,#02,#36,#50,#02
db #29,#a0,#02,#38,#50,#02,#29,#a0
db #02,#39,#50,#02,#29,#a0,#02,#3b
db #50,#02,#29,#a0,#02,#3d,#50,#02
db #29,#a0,#02,#3f,#50,#02,#29,#a0
db #02,#ff
nop
jp l5e25	; Gods Rock
jp l5eb9
jp l5e9d
.l5e25
xor a
ld hl,l63d0
call l5e96
ld hl,l63fe
call l5e96
ld hl,l642c
call l5e96
ld ix,l63cc
ld iy,l6456
ld de,#002e
ld b,#03
.l5e45
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l5e45
ld hl,l62e5
ld (hl),#06
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l62e1),hl
ld (l62e3),hl
ld a,#0c
ld c,d
call l62c1
ld a,#0d
ld c,d
jp l62c1
.l5e96
ld b,#2a
.l5e98
ld (hl),a
inc hl
djnz l5e98
ret
.l5e9d
ld a,#07
ld c,#3f
call l62c1
ld a,#08
ld c,#00
call l62c1
ld a,#09
ld c,#00
call l62c1
ld a,#0a
ld c,#00
jp l62c1
.l5eb9
ld hl,l62e7
dec (hl)
ld ix,l63cc
ld bc,l63da
call l5f5b
ld ix,l63fa
ld bc,l6408
call l5f5b
ld ix,l6428
ld bc,l6436
call l5f5b
ld hl,l62e0
ld de,l62e7
ld b,#06
call l5f38
ld b,#07
call l5f38
ld b,#0b
call l5f38
ld b,#0d
call l5f38
ld de,l62e7
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l63eb
call l5f11
ld hl,l6419
call l5f11
ld hl,l6447
.l5f11
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l5f26
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l5f26
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l5f38
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l62c1
.l5f43
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l62c1
.l5f5b
ld a,(l62e7)
or a
jp nz,l6013
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l6013
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l5f43
or a
jp z,l6008
ld r,a
and #7f
cp #10
jr c,l5fe3
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l615b
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l5fbc
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l5fbc
rrca
ld c,a
ld hl,l645c
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l5fdb
ld (ix+#1e),b
.l5fdb
ld a,i
pop hl
ld d,b
and #0f
jr z,l5ffc
.l5fe3
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l62ec
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l5ffc
ld a,d
or a
jr nz,l600a
ld a,r
bit 7,a
ld a,#01
jr nz,l600a
.l6008
ld a,(hl)
inc hl
.l600a
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l6013
ld a,(ix+#17)
or a
jr nz,l6029
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l6029
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l603f
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l603f
ld a,(ix+#0d)
or a
jr z,l604d
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l606b
.l604d
ld a,(ix+#1a)
or a
jp z,l6072
ld c,a
cp #03
jr nz,l605a
xor a
.l605a
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l606b
ld a,(ix+#18)
dec c
jr z,l606b
ld a,(ix+#19)
.l606b
add (ix+#07)
ld b,d
call l615b
.l6072
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l609a
dec (ix+#1b)
jr nz,l609a
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l60d2
.l609a
ld a,(ix+#29)
or a
jr z,l60d2
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l60c9
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l60c0
ld (ix+#29),#ff
jr l60c9
.l60c0
cp (ix+#2b)
jr nz,l60c9
ld (ix+#29),#01
.l60c9
ld b,d
or a
jp p,l60cf
dec b
.l60cf
ld c,a
jr l60dd
.l60d2
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l60dd
pop hl
bit 7,(ix+#14)
jr z,l60e6
ld h,d
ld l,d
.l60e6
add hl,bc
ld c,l
ld a,(ix+#01)
call l62c1
ld c,h
ld a,(ix+#02)
call l62c1
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l6139
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l6128
dec (ix+#09)
jr nz,l6128
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l6120
xor a
jr l6125
.l6120
cp #10
jr nz,l6125
dec a
.l6125
ld (ix+#1e),a
.l6128
ld a,b
sub (ix+#1e)
jr nc,l612f
xor a
.l612f
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l62c1
.l6139
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l62e8)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l6157
ld l,a
ld a,b
cpl
and h
ld h,a
.l6157
ld (l62e8),hl
ret
.l615b
ld hl,l630a
cp #61
jr nc,l6165
add a
ld c,a
add hl,bc
.l6165
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l616f
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l6294
ld (ix+#1e),a
jp l5ffc
.l6181
dec b
.l6182
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l618d
neg
.l618d
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l5ffc
.l61a3
dec b
jr l61a7
.l61a6
inc b
.l61a7
call l6294
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l5ffc
.l61b6
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l6279
.l61c7
ld a,(hl)
inc hl
or a
jr z,l61e9
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l61e9
ld (ix+#29),a
jp l5ffc
.l61ef
dec hl
ld a,(hl)
and #0f
ld (l62eb),a
inc hl
ld a,(hl)
inc hl
ld (l62ea),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l5ffc
.l6209
ld a,(hl)
or a
jr z,l621a
call l6296
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l5ffc
.l621a
ld hl,#0101
ld (l62e6),hl
jp l5ffc
.l6223
call l6294
ld (ix+#1e),a
jp l5ffc
.l622c
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l62a5
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l62a5
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l5ffc
.l624e
ld a,(hl)
inc hl
ld (l62e5),a
jp l5ffc
.l6256
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l5ffc
.l6275
call l6294
add a
.l6279
ld b,#00
ld c,a
push hl
ld hl,l64dc
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l5ffc
.l6294
ld a,(hl)
inc hl
.l6296
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l62a5
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l645c
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l62c1
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l62e0
ret
.l62e8 equ $ + 7
.l62e7 equ $ + 6
.l62e6 equ $ + 5
.l62e5 equ $ + 4
.l62e3 equ $ + 2
.l62e1
db #00,#00,#00,#00,#00,#00,#00,#00
.l62eb equ $ + 2
.l62ea equ $ + 1
db #38,#00,#00
.l62ec
dw l616f,l6182,l6181,l61a6
dw l61a3,l61b6,l61c7,l61ef
dw l6209,l61ef,l6223,l622c
dw l624e,l6256,l6275
.l630a
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l63d0 equ $ + 4
.l63cc
db #08,#00,#01,#08,#00,#00,#00,#00
.l63da equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l63eb equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l63fa equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l63fe equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l6408 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6419 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6428 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l642c
db #00,#00,#00,#00,#00,#00,#00,#00
.l6436 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6447 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6456 equ $ + 2
db #00,#00,#bc,#67,#e0,#67,#04,#68
.l645c
db #fc,#64,#3c,#65,#5c,#65,#c0,#00
db #6e,#68,#79,#2c,#68,#5d,#7a,#3f
db #7c,#65,#bc,#65,#dc,#65,#00,#00
db #fc,#65,#3c,#66,#5c,#66,#80,#00
db #ee,#1d,#87,#74,#47,#76,#79,#58
db #7c,#65,#7c,#66,#9c,#66,#9a,#06
db #7c,#65,#bc,#65,#bc,#66,#00,#00
db #dc,#66,#1c,#67,#dc,#65,#48,#08
db #3c,#67,#7c,#67,#dc,#65,#40,#00
db #7c,#65,#9c,#67,#dc,#65,#00,#00
db #ee,#1d,#79,#2c,#79,#2c,#8b,#0e
db #79,#2c,#79,#2c,#79,#2c,#8b,#0e
db #79,#2c,#79,#2c,#79,#2c,#8b,#0e
db #79,#2c,#79,#2c,#79,#2c,#8b,#0e
db #79,#2c,#ee,#1d,#53,#1f,#3e,#01
db #ee,#1d,#b1,#22,#53,#1f,#00,#00
.l64dc
db #ee,#1d,#ee,#1d,#ee,#1d,#ee,#1d
db #ee,#1d,#ee,#1d,#ee,#1d,#ee,#1d
db #ee,#1d,#ee,#1d,#ee,#1d,#ee,#1d
db #ee,#1d,#ee,#1d,#ee,#1d,#ee,#1d
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0b,#09,#07,#05,#03,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#01,#01,#01,#01,#01,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
db #09,#08,#08,#08,#08,#08,#08,#08
db #08,#08,#08,#08,#07,#06,#05,#04
db #03,#02,#01,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
db #09,#09,#09,#08,#08,#07,#07,#06
db #05,#04,#03,#02,#01,#00,#00,#00
db #00,#28,#68,#00,#28,#68,#00,#28
db #68,#00,#28,#68,#00,#89,#68,#00
db #4b,#69,#00,#ea,#68,#00,#4b,#69
db #00,#bd,#69,#00,#30,#6a,#00,#8f
db #6a,#80,#bc,#67,#00,#13,#6b,#00
db #13,#6b,#00,#f4,#6a,#00,#f4,#6a
db #00,#16,#6b,#00,#13,#6b,#00,#19
db #6b,#00,#13,#6b,#00,#9a,#6b,#00
db #13,#6b,#00,#12,#6c,#80,#e0,#67
db #00,#a1,#6c,#00,#a1,#6c,#00,#6e
db #6c,#00,#6e,#6c,#00,#d2,#6c,#00
db #13,#6b,#00,#12,#6d,#00,#13,#6b
db #00,#63,#6d,#00,#13,#6b,#00,#be
db #6d,#80,#04,#68,#38,#50,#02,#38
db #50,#02,#38,#50,#02,#38,#50,#02
db #38,#50,#02,#38,#50,#02,#38,#50
db #02,#38,#50,#02,#38,#50,#02,#38
db #50,#02,#38,#50,#02,#38,#50,#02
db #38,#50,#02,#38,#50,#02,#38,#50
db #02,#38,#50,#02,#38,#50,#02,#38
db #50,#02,#38,#50,#02,#38,#50,#02
db #38,#50,#02,#38,#50,#02,#38,#50
db #02,#38,#50,#02,#38,#50,#02,#38
db #50,#02,#38,#50,#02,#38,#50,#02
db #38,#50,#02,#38,#50,#02,#38,#50
db #02,#38,#50,#02,#ff,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#34,#50
db #02,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#34,#50
db #02,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#34,#50
db #02,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#34,#50
db #02,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#ff,#3b,#50
db #02,#39,#50,#02,#39,#50,#02,#39
db #50,#02,#39,#50,#02,#39,#50,#02
db #39,#50,#02,#39,#50,#02,#39,#50
db #02,#39,#50,#02,#39,#50,#02,#39
db #50,#02,#39,#50,#02,#39,#50,#02
db #3b,#50,#02,#39,#50,#02,#3b,#50
db #02,#39,#50,#02,#3b,#50,#02,#39
db #50,#02,#3b,#50,#02,#39,#50,#02
db #3b,#50,#02,#39,#50,#02,#3b,#50
db #02,#39,#50,#02,#3b,#50,#02,#39
db #50,#02,#3b,#50,#02,#39,#50,#02
db #3b,#50,#02,#39,#50,#02,#ff,#57
db #90,#02,#d7,#90,#d8,#90,#d7,#90
db #d7,#90,#d8,#90,#d7,#90,#d5,#90
db #53,#90,#04,#d7,#90,#d8,#90,#d8
db #90,#d7,#90,#d8,#90,#55,#90,#02
db #58,#90,#03,#d8,#90,#da,#90,#da
db #90,#58,#90,#02,#d3,#90,#d8,#90
db #d7,#90,#d7,#90,#d8,#90,#51,#90
db #02,#da,#90,#d8,#90,#d8,#90,#da
db #90,#d8,#90,#d3,#90,#d8,#90,#d7
db #90,#d8,#90,#d7,#90,#d8,#90,#d8
db #90,#da,#90,#d8,#90,#d8,#90,#da
db #90,#58,#90,#02,#d3,#90,#d8,#90
db #57,#90,#02,#d1,#90,#d7,#90,#d8
db #90,#d8,#90,#d7,#90,#58,#90,#02
db #ff,#58,#90,#02,#d7,#90,#d7,#90
db #d8,#90,#d8,#90,#53,#90,#02,#57
db #90,#03,#d8,#90,#d7,#90,#d7,#90
db #d8,#90,#d7,#90,#53,#90,#02,#d1
db #90,#d7,#90,#d8,#90,#d7,#90,#d7
db #90,#d8,#90,#d3,#90,#da,#90,#d8
db #90,#da,#90,#d8,#90,#da,#90,#da
db #90,#51,#90,#02,#d1,#90,#d7,#90
db #d8,#90,#d7,#90,#d8,#90,#d8,#90
db #51,#90,#02,#da,#90,#58,#90,#02
db #d8,#90,#d8,#90,#da,#90,#d3,#90
db #d1,#90,#d8,#90,#d7,#90,#d8,#90
db #58,#90,#02,#d0,#90,#5a,#90,#03
db #da,#90,#d8,#90,#da,#90,#58,#90
db #02,#d3,#90,#ff,#d8,#70,#d7,#70
db #d7,#70,#d8,#70,#d7,#70,#58,#70
db #02,#d8,#70,#d7,#70,#d8,#70,#d8
db #70,#d7,#70,#d8,#70,#d8,#70,#d7
db #70,#d7,#70,#53,#70,#03,#d7,#70
db #d8,#70,#d7,#70,#d8,#70,#d8,#70
db #53,#70,#03,#d8,#70,#d8,#70,#d7
db #70,#d8,#70,#53,#70,#04,#d7,#70
db #d8,#70,#d7,#70,#d8,#70,#d7,#70
db #51,#70,#03,#d7,#70,#d8,#70,#57
db #70,#03,#50,#70,#04,#d7,#70,#57
db #70,#02,#4e,#70,#04,#57,#70,#04
db #cc,#70,#ff,#58,#70,#02,#58,#70
db #04,#55,#70,#02,#55,#70,#02,#58
db #70,#02,#57,#70,#02,#d7,#70,#58
db #70,#02,#58,#70,#02,#53,#70,#02
db #d3,#70,#d8,#70,#d7,#70,#d8,#70
db #d7,#70,#58,#70,#02,#55,#70,#03
db #d8,#70,#d7,#70,#d8,#70,#d8,#70
db #d7,#70,#d8,#70,#55,#70,#03,#d8
db #70,#d7,#70,#d7,#70,#58,#70,#02
db #d3,#70,#d8,#70,#d7,#70,#d8,#70
db #d7,#70,#d1,#70,#d8,#70,#d7,#70
db #d7,#70,#d0,#70,#d8,#70,#d7,#70
db #d7,#70,#4e,#70,#03,#fe,#03,#ff
db #40,#70,#05,#40,#70,#06,#3f,#70
db #0b,#40,#70,#05,#40,#70,#06,#3f
db #70,#0b,#40,#70,#06,#40,#70,#06
db #3f,#70,#06,#3d,#70,#02,#ff,#00
db #40,#ff,#fe,#40,#ff,#b4,#00,#c2
db #00,#fe,#01,#c2,#00,#b4,#00,#c2
db #00,#b4,#00,#fe,#01,#b4,#00,#c2
db #00,#b4,#00,#c2,#00,#fe,#01,#c2
db #00,#b4,#00,#c2,#00,#b4,#00,#fe
db #01,#b4,#00,#c2,#00,#b4,#00,#c2
db #00,#fe,#01,#c2,#00,#b4,#00,#c2
db #00,#b4,#00,#fe,#01,#b4,#00,#c2
db #00,#b4,#00,#c2,#00,#fe,#01,#c2
db #00,#b4,#00,#c2,#00,#b4,#00,#fe
db #01,#b4,#00,#c2,#00,#b4,#00,#c2
db #00,#fe,#01,#c2,#00,#b4,#00,#c2
db #00,#b4,#00,#fe,#01,#b4,#00,#c2
db #00,#b4,#00,#c2,#00,#fe,#01,#c2
db #00,#b4,#00,#c2,#00,#b4,#00,#fe
db #01,#b4,#00,#c2,#00,#b4,#00,#c2
db #00,#fe,#01,#c2,#00,#ff,#d7,#20
db #d8,#20,#d8,#20,#d7,#20,#d8,#20
db #d3,#20,#d1,#20,#d1,#20,#da,#20
db #d8,#20,#da,#20,#da,#20,#d8,#20
db #51,#20,#03,#dc,#20,#da,#20,#da
db #20,#dc,#20,#da,#20,#da,#20,#dc
db #20,#dc,#20,#5a,#20,#02,#d1,#20
db #da,#20,#d5,#20,#d7,#20,#d1,#20
db #58,#20,#02,#dc,#20,#da,#20,#d8
db #20,#d8,#20,#da,#20,#d3,#20,#d3
db #20,#d1,#20,#d3,#20,#da,#20,#d8
db #20,#da,#20,#da,#20,#51,#20,#02
db #d1,#20,#da,#20,#d8,#20,#da,#20
db #d8,#20,#da,#20,#53,#20,#02,#d5
db #20,#da,#20,#d8,#20,#d8,#20,#5a
db #20,#02,#51,#20,#02,#ff,#d8,#80
db #d7,#80,#d8,#80,#d7,#80,#d7,#80
db #d8,#80,#51,#80,#03,#d1,#80,#d8
db #80,#57,#80,#02,#d7,#80,#d8,#80
db #d1,#80,#50,#80,#04,#d8,#80,#d7
db #80,#d7,#80,#d8,#80,#d7,#80,#51
db #80,#05,#d8,#80,#d7,#80,#d7,#80
db #58,#80,#02,#51,#80,#03,#d8,#80
db #57,#80,#02,#da,#80,#d8,#80,#da
db #80,#da,#80,#d8,#80,#5a,#80,#02
db #51,#80,#03,#50,#80,#02,#5a,#80
db #02,#5a,#80,#05,#50,#80,#02,#fe
db #02,#ff,#00,#02,#44,#30,#04,#44
db #30,#04,#44,#30,#04,#44,#30,#04
db #44,#30,#04,#44,#30,#04,#44,#30
db #04,#44,#30,#04,#44,#30,#04,#44
db #30,#04,#44,#30,#04,#44,#30,#04
db #44,#30,#04,#44,#30,#04,#44,#30
db #04,#44,#30,#02,#ff,#3f,#70,#04
db #40,#70,#04,#3f,#70,#04,#42,#70
db #04,#3d,#70,#04,#44,#70,#04,#3b
db #70,#04,#44,#70,#04,#3d,#70,#04
db #44,#70,#04,#3f,#70,#04,#40,#70
db #04,#3d,#70,#04,#3d,#70,#04,#40
db #70,#04,#3b,#70,#04,#ff,#42,#30
db #03,#3f,#60,#03,#42,#30,#03,#42
db #60,#03,#42,#30,#03,#3f,#60,#03
db #42,#30,#03,#44,#60,#03,#42,#30
db #03,#3d,#60,#03,#42,#30,#03,#42
db #60,#03,#42,#30,#03,#3b,#60,#03
db #42,#30,#03,#40,#60,#03,#42,#30
db #03,#42,#60,#03,#42,#30,#03,#3f
db #60,#03,#42,#30,#04,#ff,#d7,#80
db #57,#80,#03,#58,#80,#04,#55,#80
db #02,#55,#80,#02,#58,#80,#04,#57
db #80,#02,#57,#80,#03,#58,#80,#03
db #d5,#80,#55,#80,#02,#d5,#80,#58
db #80,#04,#d5,#80,#55,#80,#02,#d8
db #80,#d7,#80,#58,#80,#03,#d3,#80
db #53,#80,#02,#d8,#80,#57,#80,#03
db #53,#80,#03,#d5,#80,#55,#80,#03
db #d3,#80,#53,#80,#02,#55,#80,#02
db #55,#80,#03,#57,#80,#02,#ff,#d8
db #70,#d7,#70,#d7,#70,#d8,#70,#d8
db #70,#d5,#70,#d5,#70,#d3,#70,#da
db #70,#d8,#70,#5a,#70,#04,#da,#70
db #53,#70,#02,#da,#70,#d8,#70,#d7
db #70,#d8,#70,#d8,#70,#57,#70,#02
db #55,#70,#02,#d8,#70,#5a,#70,#05
db #da,#70,#d8,#70,#d7,#70,#d8,#70
db #d8,#70,#d7,#70,#d5,#70,#da,#70
db #d8,#70,#58,#70,#04,#d5,#70,#d7
db #70,#d8,#70,#d3,#70,#55,#70,#02
db #5a,#70,#04,#55,#70,#03,#53,#70
db #06,#ff,#d8,#90,#d7,#90,#d8,#90
db #d8,#90,#d7,#90,#55,#90,#03,#5a
db #90,#02,#da,#90,#d8,#90,#da,#90
db #da,#90,#d8,#90,#da,#90,#da,#90
db #d5,#90,#da,#90,#d8,#90,#d8,#90
db #da,#90,#d8,#90,#d8,#90,#d3,#90
db #d8,#90,#d8,#90,#da,#90,#5a,#90
db #03,#53,#90,#02,#d3,#90,#d8,#90
db #da,#90,#d8,#90,#55,#90,#02,#d5
db #90,#d5,#90,#58,#90,#02,#5a,#90
db #02,#d7,#90,#d7,#90,#58,#90,#02
db #da,#90,#55,#90,#02,#d3,#90,#d8
db #90,#da,#90,#d0,#90,#51,#90,#02
db #da,#90,#d8,#90,#55,#90,#02,#fe
db #02,#ff
nop
jp l6e38	; Savurian
jp l6ecc
jp l6eb0
.l6e38
xor a
ld hl,l73e3
call l6ea9
ld hl,l7411
call l6ea9
ld hl,l743f
call l6ea9
ld ix,l73df
ld iy,l7469
ld de,#002e
ld b,#03
.l6e58
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l6e58
ld hl,l72f8
ld (hl),#02
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l72f4),hl
ld (l72f6),hl
ld a,#0c
ld c,d
call l72d4
ld a,#0d
ld c,d
jp l72d4
.l6ea9
ld b,#2a
.l6eab
ld (hl),a
inc hl
djnz l6eab
ret
.l6eb0
ld a,#07
ld c,#3f
call l72d4
ld a,#08
ld c,#00
call l72d4
ld a,#09
ld c,#00
call l72d4
ld a,#0a
ld c,#00
jp l72d4
.l6ecc
ld hl,l72fa
dec (hl)
ld ix,l73df
ld bc,l73ed
call l6f6e
ld ix,l740d
ld bc,l741b
call l6f6e
ld ix,l743b
ld bc,l7449
call l6f6e
ld hl,l72f3
ld de,l72fa
ld b,#06
call l6f4b
ld b,#07
call l6f4b
ld b,#0b
call l6f4b
ld b,#0d
call l6f4b
ld de,l72fa
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l73fe
call l6f24
ld hl,l742c
call l6f24
ld hl,l745a
.l6f24
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l6f39
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l6f39
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l6f4b
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l72d4
.l6f56
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l72d4
.l6f6e
ld a,(l72fa)
or a
jp nz,l7026
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l7026
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l6f56
or a
jp z,l701b
ld r,a
and #7f
cp #10
jr c,l6ff6
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l716e
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l6fcf
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l6fcf
rrca
ld c,a
ld hl,l746f
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l6fee
ld (ix+#1e),b
.l6fee
ld a,i
pop hl
ld d,b
and #0f
jr z,l700f
.l6ff6
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l72ff
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l700f
ld a,d
or a
jr nz,l701d
ld a,r
bit 7,a
ld a,#01
jr nz,l701d
.l701b
ld a,(hl)
inc hl
.l701d
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l7026
ld a,(ix+#17)
or a
jr nz,l703c
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l703c
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l7052
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l7052
ld a,(ix+#0d)
or a
jr z,l7060
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l707e
.l7060
ld a,(ix+#1a)
or a
jp z,l7085
ld c,a
cp #03
jr nz,l706d
xor a
.l706d
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l707e
ld a,(ix+#18)
dec c
jr z,l707e
ld a,(ix+#19)
.l707e
add (ix+#07)
ld b,d
call l716e
.l7085
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l70ad
dec (ix+#1b)
jr nz,l70ad
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l70e5
.l70ad
ld a,(ix+#29)
or a
jr z,l70e5
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l70dc
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l70d3
ld (ix+#29),#ff
jr l70dc
.l70d3
cp (ix+#2b)
jr nz,l70dc
ld (ix+#29),#01
.l70dc
ld b,d
or a
jp p,l70e2
dec b
.l70e2
ld c,a
jr l70f0
.l70e5
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l70f0
pop hl
bit 7,(ix+#14)
jr z,l70f9
ld h,d
ld l,d
.l70f9
add hl,bc
ld c,l
ld a,(ix+#01)
call l72d4
ld c,h
ld a,(ix+#02)
call l72d4
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l714c
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l713b
dec (ix+#09)
jr nz,l713b
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l7133
xor a
jr l7138
.l7133
cp #10
jr nz,l7138
dec a
.l7138
ld (ix+#1e),a
.l713b
ld a,b
sub (ix+#1e)
jr nc,l7142
xor a
.l7142
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l72d4
.l714c
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l72fb)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l716a
ld l,a
ld a,b
cpl
and h
ld h,a
.l716a
ld (l72fb),hl
ret
.l716e
ld hl,l731d
cp #61
jr nc,l7178
add a
ld c,a
add hl,bc
.l7178
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l7182
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l72a7
ld (ix+#1e),a
jp l700f
.l7194
dec b
.l7195
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l71a0
neg
.l71a0
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l700f
.l71b6
dec b
jr l71ba
.l71b9
inc b
.l71ba
call l72a7
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l700f
.l71c9
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l728c
.l71da
ld a,(hl)
inc hl
or a
jr z,l71fc
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l71fc
ld (ix+#29),a
jp l700f
.l7202
dec hl
ld a,(hl)
and #0f
ld (l72fe),a
inc hl
ld a,(hl)
inc hl
ld (l72fd),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l700f
.l721c
ld a,(hl)
or a
jr z,l722d
call l72a9
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l700f
.l722d
ld hl,#0101
ld (l72f9),hl
jp l700f
.l7236
call l72a7
ld (ix+#1e),a
jp l700f
.l723f
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l72b8
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l72b8
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l700f
.l7261
ld a,(hl)
inc hl
ld (l72f8),a
jp l700f
.l7269
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l700f
.l7288
call l72a7
add a
.l728c
ld b,#00
ld c,a
push hl
ld hl,l74ef
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l700f
.l72a7
ld a,(hl)
inc hl
.l72a9
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l72b8
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l746f
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l72d4
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l72f3
ret
.l72fb equ $ + 7
.l72fa equ $ + 6
.l72f9 equ $ + 5
.l72f8 equ $ + 4
.l72f6 equ $ + 2
.l72f4
db #00,#00,#00,#00,#00,#00,#00,#00
.l72fe equ $ + 2
.l72fd equ $ + 1
db #38,#00,#00
.l72ff
dw l7182,l7195,l7194,l71b9
dw l71b6,l71c9,l71da,l7202
dw l721c,l7202,l7236,l723f
dw l7261,l7269,l7288
.l731d
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l73e3 equ $ + 4
.l73df
db #08,#00,#01,#08,#00,#00,#00,#00
.l73ed equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l73fe equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l740d equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l7411 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l741b equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l742c equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l743b equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l743f
db #00,#00,#00,#00,#00,#00,#00,#00
.l7449 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l745a equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7469 equ $ + 2
db #00,#00,#af,#77,#42,#78,#d5,#78
.l746f
db #0f,#75,#4f,#75,#6f,#75,#c0,#00
db #01,#2e,#dd,#94,#1d,#95,#dc,#65
db #49,#36,#3d,#95,#7d,#95,#dc,#65
db #41,#2e,#7d,#93,#9d,#95,#dc,#65
db #8f,#75,#cf,#75,#ef,#75,#08,#18
db #0f,#76,#4f,#76,#6f,#76,#9a,#06
db #0f,#76,#8f,#76,#af,#76,#00,#00
db #cf,#76,#0f,#77,#ef,#75,#48,#08
db #2f,#77,#6f,#77,#ef,#75,#40,#00
db #0f,#76,#8f,#77,#ef,#75,#00,#00
db #01,#2e,#ef,#4b,#ef,#4b,#ee,#1d
db #ef,#4b,#ef,#4b,#ef,#4b,#ee,#1d
db #ef,#4b,#ef,#4b,#ef,#4b,#ee,#1d
db #ef,#4b,#ef,#4b,#ef,#4b,#ee,#1d
db #ef,#4b,#01,#2e,#66,#2f,#3e,#01
db #01,#2e,#c4,#32,#66,#2f,#00,#00
.l74ef
db #01,#2e,#01,#2e,#01,#2e,#01,#2e
db #01,#2e,#01,#2e,#01,#2e,#01,#2e
db #01,#2e,#01,#2e,#01,#2e,#01,#2e
db #01,#2e,#01,#2e,#01,#2e,#01,#2e
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0b,#09,#07,#05,#03,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#01,#01,#01,#01,#01,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
db #09,#08,#08,#08,#08,#08,#08,#08
db #08,#08,#08,#08,#07,#06,#05,#04
db #03,#02,#01,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
db #09,#09,#09,#08,#08,#07,#07,#06
db #05,#04,#03,#02,#01,#00,#00,#00
db #00,#68,#79,#00,#68,#79,#00,#68
db #79,#00,#68,#79,#00,#ea,#79,#00
db #ea,#79,#00,#ea,#79,#00,#ea,#79
db #00,#57,#7a,#00,#57,#7a,#00,#57
db #7a,#00,#57,#7a,#00,#b8,#7a,#00
db #b8,#7a,#00,#b8,#7a,#00,#b8,#7a
db #00,#b8,#7a,#00,#b8,#7a,#00,#b8
db #7a,#00,#b8,#7a,#00,#19,#7b,#00
db #19,#7b,#00,#19,#7b,#00,#19,#7b
db #00,#9a,#7b,#00,#9a,#7b,#00,#9a
db #7b,#00,#9a,#7b,#00,#9a,#7b,#00
db #19,#7b,#00,#9a,#7b,#00,#9a,#7b
db #00,#b8,#7a,#00,#19,#7b,#00,#b8
db #7a,#00,#b8,#7a,#00,#b8,#7a,#00
db #9a,#7b,#00,#19,#7b,#00,#b8,#7a
db #00,#19,#7b,#00,#b8,#7a,#00,#9a
db #7b,#00,#9a,#7b,#00,#9a,#7b,#00
db #9a,#7b,#00,#9a,#7b,#00,#9a,#7b
db #80,#af,#77,#00,#1b,#7c,#00,#1b
db #7c,#00,#1b,#7c,#00,#1b,#7c,#00
db #20,#7c,#00,#20,#7c,#00,#20,#7c
db #00,#20,#7c,#00,#23,#7c,#00,#23
db #7c,#00,#23,#7c,#00,#23,#7c,#00
db #20,#7c,#00,#20,#7c,#00,#20,#7c
db #00,#20,#7c,#00,#84,#7c,#00,#84
db #7c,#00,#84,#7c,#00,#84,#7c,#00
db #aa,#7c,#00,#aa,#7c,#00,#aa,#7c
db #00,#aa,#7c,#00,#20,#7c,#00,#20
db #7c,#00,#20,#7c,#00,#20,#7c,#00
db #20,#7c,#00,#aa,#7c,#00,#20,#7c
db #00,#20,#7c,#00,#84,#7c,#00,#aa
db #7c,#00,#84,#7c,#00,#84,#7c,#00
db #84,#7c,#00,#20,#7c,#00,#aa,#7c
db #00,#84,#7c,#00,#aa,#7c,#00,#84
db #7c,#00,#20,#7c,#00,#20,#7c,#00
db #20,#7c,#00,#20,#7c,#00,#20,#7c
db #00,#20,#7c,#80,#42,#78,#00,#ad
db #7c,#00,#ad,#7c,#00,#ad,#7c,#00
db #ad,#7c,#00,#2f,#7d,#00,#2f,#7d
db #00,#2f,#7d,#00,#2f,#7d,#00,#b0
db #7d,#00,#b0,#7d,#00,#b0,#7d,#00
db #b0,#7d,#00,#20,#7c,#00,#20,#7c
db #00,#20,#7c,#00,#20,#7c,#00,#12
db #7e,#00,#12,#7e,#00,#12,#7e,#00
db #12,#7e,#00,#aa,#7c,#00,#aa,#7c
db #00,#aa,#7c,#00,#aa,#7c,#00,#20
db #7c,#00,#20,#7c,#00,#20,#7c,#00
db #20,#7c,#00,#20,#7c,#00,#aa,#7c
db #00,#20,#7c,#00,#20,#7c,#00,#12
db #7e,#00,#aa,#7c,#00,#12,#7e,#00
db #12,#7e,#00,#12,#7e,#00,#20,#7c
db #00,#aa,#7c,#00,#12,#7e,#00,#aa
db #7c,#00,#12,#7e,#00,#20,#7c,#00
db #20,#7c,#00,#20,#7c,#00,#20,#7c
db #00,#20,#7c,#00,#20,#7c,#80,#d5
db #78,#57,#01,#10,#da,#00,#d8,#00
db #d7,#00,#d3,#00,#da,#00,#d0,#00
db #d7,#00,#d5,#00,#da,#00,#d7,#00
db #d5,#00,#da,#00,#d7,#00,#d3,#00
db #d5,#00,#da,#00,#d8,#00,#d1,#00
db #d7,#00,#da,#00,#d1,#00,#d3,#00
db #da,#00,#d8,#00,#d5,#00,#d1,#00
db #d3,#00,#d0,#00,#ce,#00,#d7,#00
db #d5,#00,#d1,#00,#d3,#00,#d0,#00
db #ce,#00,#da,#00,#d8,#00,#d7,#00
db #d5,#00,#d1,#00,#d3,#00,#d0,#00
db #ce,#00,#da,#00,#d7,#00,#d3,#00
db #da,#00,#d1,#00,#d3,#00,#d7,#00
db #da,#00,#d1,#00,#d0,#00,#d8,#00
db #da,#00,#d7,#00,#d3,#00,#da,#00
db #d7,#00,#d5,#00,#d1,#00,#d1,#00
db #d3,#00,#ff,#5c,#80,#02,#5c,#80
db #02,#dc,#80,#dc,#80,#5c,#80,#02
db #dc,#80,#dc,#80,#dc,#80,#5c,#80
db #02,#dc,#80,#5c,#80,#02,#5c,#80
db #02,#5c,#80,#02,#dc,#80,#dc,#80
db #5c,#80,#02,#dc,#80,#dc,#80,#dc
db #80,#5c,#80,#02,#dc,#80,#5c,#80
db #02,#5c,#80,#02,#5c,#80,#02,#dc
db #80,#dc,#80,#5c,#80,#02,#dc,#80
db #dc,#80,#dc,#80,#5c,#80,#02,#dc
db #80,#5c,#80,#02,#5c,#80,#02,#5c
db #80,#02,#dc,#80,#dc,#80,#5c,#80
db #02,#dc,#80,#dc,#80,#dc,#80,#5c
db #80,#02,#dc,#80,#5c,#80,#02,#ff
db #58,#70,#02,#5a,#70,#02,#51,#70
db #02,#53,#70,#02,#5c,#70,#02,#50
db #70,#02,#4e,#70,#02,#53,#70,#02
db #5c,#70,#02,#5a,#70,#02,#51,#70
db #02,#50,#70,#02,#4e,#70,#02,#58
db #70,#02,#5a,#70,#02,#5a,#70,#02
db #55,#70,#02,#58,#70,#02,#57,#70
db #02,#51,#70,#02,#53,#70,#02,#5a
db #70,#02,#5c,#70,#02,#55,#70,#02
db #53,#70,#02,#58,#70,#02,#5c,#70
db #02,#55,#70,#02,#53,#70,#02,#58
db #70,#02,#5c,#70,#02,#5a,#70,#02
db #ff,#57,#90,#02,#58,#90,#02,#5a
db #90,#02,#5c,#90,#02,#57,#90,#02
db #58,#90,#02,#5a,#90,#02,#5c,#90
db #02,#57,#90,#02,#58,#90,#02,#5a
db #90,#02,#5c,#90,#02,#57,#90,#02
db #58,#90,#02,#5a,#90,#02,#5c,#90
db #02,#57,#90,#02,#58,#90,#02,#5a
db #90,#02,#5c,#90,#02,#57,#90,#02
db #58,#90,#02,#5a,#90,#02,#5c,#90
db #02,#57,#90,#02,#58,#90,#02,#5a
db #90,#02,#5c,#90,#02,#57,#90,#02
db #58,#90,#02,#5a,#90,#02,#5c,#90
db #02,#ff,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#eb,#90,#ed,#90,#ef,#90
db #f0,#90,#ff,#f0,#90,#f2,#90,#e8
db #90,#e9,#90,#eb,#90,#ed,#90,#ef
db #90,#f0,#90,#f2,#90,#f4,#90,#e4
db #90,#e6,#90,#e8,#90,#e9,#90,#eb
db #90,#ed,#90,#ef,#90,#f0,#90,#f2
db #90,#f4,#90,#e4,#90,#e6,#90,#e8
db #90,#e9,#90,#eb,#90,#ed,#90,#ef
db #90,#f0,#90,#f2,#90,#f4,#90,#e6
db #90,#e8,#90,#e9,#90,#eb,#90,#ed
db #90,#ef,#90,#f0,#90,#f2,#90,#e4
db #90,#e6,#90,#e8,#90,#e9,#90,#eb
db #90,#ed,#90,#ef,#90,#f0,#90,#f2
db #90,#e4,#90,#e6,#90,#e8,#90,#e9
db #90,#eb,#90,#ed,#90,#ef,#90,#f0
db #90,#f2,#90,#f4,#90,#e4,#90,#e6
db #90,#e8,#90,#e9,#90,#eb,#90,#ed
db #90,#ef,#90,#ff,#5c,#41,#00,#40
db #ff,#00,#40,#ff,#57,#80,#02,#51
db #80,#02,#5a,#80,#02,#51,#80,#02
db #50,#80,#02,#58,#80,#02,#53,#80
db #02,#5a,#80,#02,#53,#80,#02,#58
db #80,#02,#51,#80,#02,#50,#80,#02
db #4e,#80,#02,#5a,#80,#02,#5c,#80
db #02,#53,#80,#02,#50,#80,#02,#5a
db #80,#02,#55,#80,#02,#53,#80,#02
db #58,#80,#02,#5a,#80,#02,#55,#80
db #02,#53,#80,#02,#58,#80,#02,#57
db #80,#02,#51,#80,#02,#5a,#80,#02
db #5c,#80,#02,#55,#80,#02,#53,#80
db #02,#58,#80,#02,#ff,#57,#60,#08
db #d7,#60,#57,#60,#08,#d7,#60,#57
db #60,#08,#d7,#60,#57,#60,#08,#d7
db #60,#57,#60,#08,#d7,#60,#57,#60
db #08,#d7,#60,#57,#60,#08,#d7,#60
db #d7,#60,#ff,#fe,#40,#ff,#58,#81
db #10,#d8,#80,#da,#80,#d8,#80,#d8
db #80,#da,#80,#d8,#80,#d8,#80,#da
db #80,#d8,#80,#d8,#80,#da,#80,#d8
db #80,#d8,#80,#da,#80,#d8,#80,#d8
db #80,#da,#80,#d8,#80,#d8,#80,#da
db #80,#d8,#80,#d8,#80,#da,#80,#d8
db #80,#d8,#80,#da,#80,#d8,#80,#d8
db #80,#da,#80,#d8,#80,#d8,#80,#da
db #80,#d8,#80,#d8,#80,#da,#80,#d8
db #80,#d8,#80,#da,#80,#d8,#80,#d8
db #80,#da,#80,#d8,#80,#d8,#80,#da
db #80,#d8,#80,#d8,#80,#da,#80,#d8
db #80,#d8,#80,#da,#80,#d8,#80,#d8
db #80,#da,#80,#d8,#80,#d8,#80,#da
db #80,#d8,#80,#d8,#80,#da,#80,#d8
db #80,#d8,#80,#da,#80,#d8,#80,#ff
db #d8,#70,#d1,#70,#d0,#70,#d1,#70
db #d3,#70,#d5,#70,#d7,#70,#d8,#70
db #da,#70,#dc,#70,#cc,#70,#ce,#70
db #d0,#70,#d1,#70,#d3,#70,#d5,#70
db #d7,#70,#d8,#70,#da,#70,#dc,#70
db #cc,#70,#ce,#70,#d0,#70,#d1,#70
db #d3,#70,#d5,#70,#d7,#70,#d8,#70
db #da,#70,#cc,#70,#ce,#70,#d0,#70
db #d1,#70,#d3,#70,#d5,#70,#d7,#70
db #d8,#70,#da,#70,#cc,#70,#ce,#70
db #d0,#70,#d1,#70,#d3,#70,#d5,#70
db #d7,#70,#d8,#70,#ce,#70,#cc,#70
db #d0,#70,#d1,#70,#d3,#70,#d5,#70
db #cc,#70,#ce,#70,#d0,#70,#d1,#70
db #d3,#70,#d1,#70,#d3,#70,#d5,#70
db #d7,#70,#d5,#70,#d7,#70,#d7,#70
db #ff,#00,#01,#51,#90,#02,#58,#90
db #02,#57,#90,#02,#57,#90,#02,#5a
db #90,#02,#51,#90,#02,#53,#90,#02
db #53,#90,#02,#58,#90,#02,#57,#90
db #02,#53,#90,#02,#58,#90,#02,#5a
db #90,#02,#51,#90,#02,#50,#90,#02
db #4e,#90,#02,#57,#90,#02,#58,#90
db #02,#57,#90,#02,#50,#90,#02,#55
db #90,#02,#4e,#90,#02,#5a,#90,#02
db #58,#90,#02,#51,#90,#02,#5a,#90
db #02,#50,#90,#02,#58,#90,#02,#4e
db #90,#02,#51,#90,#02,#5a,#90,#02
db #d8,#90,#ff,#e9,#50,#6b,#50,#02
db #57,#50,#02,#57,#50,#02,#57,#50
db #02,#e3,#50,#61,#50,#04,#ef,#50
db #6d,#50,#02,#ef,#50,#ed,#50,#e9
db #50,#6b,#50,#02,#ef,#50,#ed,#50
db #e9,#50,#6b,#50,#02,#ef,#50,#ed
db #50,#e9,#50,#ed,#50,#ef,#50,#ef
db #50,#6d,#50,#03,#ef,#50,#ed,#50
db #e9,#50,#6b,#50,#02,#6f,#50,#02
db #ef,#50,#ed,#50,#e9,#50,#6b,#50
db #02,#ed,#50,#ef,#50,#e9,#50,#6b
db #50,#02,#6f,#50,#02,#ed,#50,#ef
db #50,#e9,#50,#6b,#50,#02,#6d,#50
db #02,#ed,#50,#ef,#50,#ff


org #4000
jp l4009	; Techno
jp l409d
jp l4081
.l4009
xor a
ld hl,l45b4
call l407a
ld hl,l45e2
call l407a
ld hl,l4610
call l407a
ld ix,l45b0
ld iy,l463a
ld de,#002e
ld b,#03
.l4029
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l4029
ld hl,l44c9
ld (hl),#03
inc hl
ld (hl),#20
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l44c5),hl
ld (l44c7),hl
ld a,#0c
ld c,d
call l44a5
ld a,#0d
ld c,d
jp l44a5
.l407a
ld b,#2a
.l407c
ld (hl),a
inc hl
djnz l407c
ret
.l4081
ld a,#07
ld c,#3f
call l44a5
ld a,#08
ld c,#00
call l44a5
ld a,#09
ld c,#00
call l44a5
ld a,#0a
ld c,#00
jp l44a5
.l409d
ld hl,l44cb
dec (hl)
ld ix,l45b0
ld bc,l45be
call l413f
ld ix,l45de
ld bc,l45ec
call l413f
ld ix,l460c
ld bc,l461a
call l413f
ld hl,l44c4
ld de,l44cb
ld b,#06
call l411c
ld b,#07
call l411c
ld b,#0b
call l411c
ld b,#0d
call l411c
ld de,l44cb
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#20
ld hl,l45cf
call l40f5
ld hl,l45fd
call l40f5
ld hl,l462b
.l40f5
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l410a
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l410a
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l411c
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l44a5
.l4127
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l44a5
.l413f
ld a,(l44cb)
or a
jp nz,l41f7
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l41f7
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l4127
or a
jp z,l41ec
ld r,a
and #7f
cp #10
jr c,l41c7
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l433f
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l41a0
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l41a0
rrca
ld c,a
ld hl,l4640
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l41bf
ld (ix+#1e),b
.l41bf
ld a,i
pop hl
ld d,b
and #0f
jr z,l41e0
.l41c7
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l44d0
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l41e0
ld a,d
or a
jr nz,l41ee
ld a,r
bit 7,a
ld a,#01
jr nz,l41ee
.l41ec
ld a,(hl)
inc hl
.l41ee
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l41f7
ld a,(ix+#17)
or a
jr nz,l420d
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l420d
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l4223
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l4223
ld a,(ix+#0d)
or a
jr z,l4231
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l424f
.l4231
ld a,(ix+#1a)
or a
jp z,l4256
ld c,a
cp #03
jr nz,l423e
xor a
.l423e
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l424f
ld a,(ix+#18)
dec c
jr z,l424f
ld a,(ix+#19)
.l424f
add (ix+#07)
ld b,d
call l433f
.l4256
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l427e
dec (ix+#1b)
jr nz,l427e
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l42b6
.l427e
ld a,(ix+#29)
or a
jr z,l42b6
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l42ad
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l42a4
ld (ix+#29),#ff
jr l42ad
.l42a4
cp (ix+#2b)
jr nz,l42ad
ld (ix+#29),#01
.l42ad
ld b,d
or a
jp p,l42b3
dec b
.l42b3
ld c,a
jr l42c1
.l42b6
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l42c1
pop hl
bit 7,(ix+#14)
jr z,l42ca
ld h,d
ld l,d
.l42ca
add hl,bc
ld c,l
ld a,(ix+#01)
call l44a5
ld c,h
ld a,(ix+#02)
call l44a5
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l431d
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l430c
dec (ix+#09)
jr nz,l430c
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l4304
xor a
jr l4309
.l4304
cp #10
jr nz,l4309
dec a
.l4309
ld (ix+#1e),a
.l430c
ld a,b
sub (ix+#1e)
jr nc,l4313
xor a
.l4313
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l44a5
.l431d
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l44cc)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l433b
ld l,a
ld a,b
cpl
and h
ld h,a
.l433b
ld (l44cc),hl
ret
.l433f
ld hl,l44ee
cp #61
jr nc,l4349
add a
ld c,a
add hl,bc
.l4349
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l4353
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l4478
ld (ix+#1e),a
jp l41e0
.l4365
dec b
.l4366
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l4371
neg
.l4371
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l41e0
.l4387
dec b
jr l438b
.l438a
inc b
.l438b
call l4478
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l41e0
.l439a
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l445d
.l43ab
ld a,(hl)
inc hl
or a
jr z,l43cd
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l43cd
ld (ix+#29),a
jp l41e0
.l43d3
dec hl
ld a,(hl)
and #0f
ld (l44cf),a
inc hl
ld a,(hl)
inc hl
ld (l44ce),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l41e0
.l43ed
ld a,(hl)
or a
jr z,l43fe
call l447a
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l41e0
.l43fe
ld hl,#0101
ld (l44ca),hl
jp l41e0
.l4407
call l4478
ld (ix+#1e),a
jp l41e0
.l4410
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l4489
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l4489
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l41e0
.l4432
ld a,(hl)
inc hl
ld (l44c9),a
jp l41e0
.l443a
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l41e0
.l4459
call l4478
add a
.l445d
ld b,#00
ld c,a
push hl
ld hl,l46c0
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l41e0
.l4478
ld a,(hl)
inc hl
.l447a
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l4489
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l4640
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l44a5
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l44c4
ret
.l44cc equ $ + 7
.l44cb equ $ + 6
.l44ca equ $ + 5
.l44c9 equ $ + 4
.l44c7 equ $ + 2
.l44c5
db #00,#00,#00,#00,#00,#00,#00,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
db #38,#00,#00
.l44d0
dw l4353,l4366,l4365,l438a
dw l4387,l439a,l43ab,l43d3
dw l43ed,l43d3,l4407,l4410
dw l4432,l443a,l4459
.l44ee
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l45b4 equ $ + 4
.l45b0
db #08,#00,#01,#08,#00,#00,#00,#00
.l45be equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l45e2 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l4610
db #00,#00,#00,#00,#00,#00,#00,#00
.l461a equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
db #00,#00,#80,#4b,#67,#4c,#4e,#4d
.l4640
db #e0,#46,#20,#47,#40,#47,#20,#00
db #e0,#46,#60,#47,#40,#47,#00,#00
db #80,#47,#c0,#47,#40,#47,#00,#00
db #e0,#46,#e0,#47,#40,#47,#20,#00
db #e0,#46,#00,#48,#40,#47,#20,#00
db #e0,#46,#20,#48,#40,#48,#00,#00
db #60,#48,#a0,#48,#c0,#48,#00,#00
db #e0,#48,#20,#49,#40,#47,#00,#00
db #40,#49,#80,#49,#a0,#49,#00,#00
db #c0,#49,#00,#4a,#20,#4a,#80,#00
db #40,#4a,#80,#4a,#a0,#4a,#c0,#00
db #c0,#4a,#00,#4b,#20,#4b,#00,#00
db #e0,#46,#40,#4b,#60,#4b,#00,#00
db #10,#2e,#10,#2e,#10,#2e,#3e,#2e
db #10,#2e,#d2,#ff,#d2,#ff,#00,#00
db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
.l46c0
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d3,#ff,#d3,#ff
db #d3,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#02,#04,#08,#0b,#0d,#0e,#0f
db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
db #0f,#0e,#0d,#0b,#09,#08,#07,#06
db #06,#05,#06,#05,#07,#07,#08,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0d,#0d,#0c
db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0d,#0c,#0c,#0b,#0b,#0b,#0b
db #0b,#0a,#0a,#0a,#0a,#0a,#0b,#0b
db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#00
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#0a,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#05,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#40,#00,#80,#00,#c0,#00
db #00,#01,#40,#01,#80,#01,#c0,#01
db #00,#02,#40,#02,#80,#02,#c0,#02
db #00,#03,#40,#03,#80,#03,#c0,#03
db #00,#04,#40,#04,#80,#04,#c0,#04
db #00,#05,#40,#05,#80,#05,#c0,#05
db #00,#06,#40,#06,#80,#06,#c0,#06
db #00,#07,#40,#07,#80,#07,#c0,#07
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#09,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#03,#00
db #00,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#08,#08
db #07,#07,#06,#06,#05,#05,#04,#04
db #03,#03,#02,#02,#01,#01,#00,#00
db #00,#00,#30,#00,#60,#00,#90,#00
db #c0,#00,#f0,#00,#20,#01,#50,#01
db #80,#01,#b0,#01,#e0,#01,#10,#02
db #40,#02,#70,#02,#a0,#02,#d0,#02
db #00,#03,#20,#03,#40,#03,#60,#03
db #70,#03,#80,#03,#90,#03,#a0,#03
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
db #0a,#0a,#09,#09,#08,#07,#07,#06
db #06,#05,#05,#04,#04,#03,#03,#02
db #02,#00,#00,#00,#00,#00,#00,#00
db #04,#06,#07,#09,#0c,#11,#17,#1d
db #15,#10,#0c,#09,#06,#05,#04,#04
db #03,#03,#03,#02,#02,#02,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #38,#00,#60,#00,#b0,#00,#18,#01
db #48,#01,#80,#01,#c8,#01,#10,#02
db #58,#02,#b0,#02,#00,#00,#00,#80
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
db #06,#03,#01,#00,#80,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#06,#06,#05,#04,#04,#03,#02
db #01,#00,#80,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#35,#4e,#00,#35,#4e,#00,#35
db #4e,#00,#35,#4e,#00,#66,#4e,#00
db #66,#4e,#00,#66,#4e,#00,#66,#4e
db #00,#97,#4e,#00,#66,#4e,#00,#97
db #4e,#00,#97,#4e,#00,#c8,#4e,#00
db #c8,#4e,#00,#c8,#4e,#00,#66,#4e
db #00,#66,#4e,#00,#f9,#4e,#00,#f9
db #4e,#00,#f9,#4e,#00,#23,#4f,#00
db #64,#4f,#00,#23,#4f,#00,#64,#4f
db #00,#64,#4f,#00,#a5,#4f,#00,#a5
db #4f,#00,#a5,#4f,#00,#be,#4f,#00
db #a5,#4f,#00,#be,#4f,#00,#be,#4f
db #00,#d7,#4f,#00,#d7,#4f,#00,#d7
db #4f,#00,#fe,#4f,#00,#fe,#4f,#00
db #fe,#4f,#00,#3f,#50,#00,#d7,#4f
db #00,#fe,#4f,#00,#3f,#50,#00,#5e
db #50,#00,#5e,#50,#00,#5e,#50,#00
db #5e,#50,#00,#5e,#50,#00,#5e,#50
db #00,#87,#50,#00,#87,#50,#00,#87
db #50,#00,#ca,#50,#00,#87,#50,#00
db #ca,#50,#00,#ca,#50,#00,#ca,#50
db #00,#fb,#50,#00,#fb,#50,#00,#fb
db #50,#00,#fe,#50,#00,#fe,#50,#00
db #fe,#50,#00,#fe,#50,#00,#fe,#50
db #00,#fe,#50,#00,#5f,#51,#00,#5f
db #51,#00,#5f,#51,#00,#5f,#51,#00
db #92,#51,#00,#92,#51,#00,#92,#51
db #00,#92,#51,#00,#92,#51,#00,#92
db #51,#00,#92,#51,#80,#80,#4b,#00
db #d3,#51,#00,#d3,#51,#00,#d3,#51
db #00,#d3,#51,#00,#d7,#51,#00,#d7
db #51,#00,#d7,#51,#00,#d7,#51,#00
db #d7,#51,#00,#d7,#51,#00,#d7,#51
db #00,#d7,#51,#00,#d7,#51,#00,#d7
db #51,#00,#d7,#51,#00,#da,#51,#00
db #da,#51,#00,#da,#51,#00,#da,#51
db #00,#da,#51,#00,#da,#51,#00,#da
db #51,#00,#da,#51,#00,#da,#51,#00
db #da,#51,#00,#ff,#51,#00,#ff,#51
db #00,#ff,#51,#00,#ff,#51,#00,#ff
db #51,#00,#ff,#51,#00,#ff,#51,#00
db #18,#52,#00,#18,#52,#00,#18,#52
db #00,#3f,#52,#00,#3f,#52,#00,#3f
db #52,#00,#70,#52,#00,#18,#52,#00
db #3f,#52,#00,#70,#52,#00,#d7,#51
db #00,#d7,#51,#00,#d7,#51,#00,#8f
db #52,#00,#8f,#52,#00,#8f,#52,#00
db #8f,#52,#00,#8f,#52,#00,#8f,#52
db #00,#c2,#52,#00,#8f,#52,#00,#c2
db #52,#00,#c2,#52,#00,#c2,#52,#00
db #fb,#50,#00,#fb,#50,#00,#fb,#50
db #00,#d7,#51,#00,#d7,#51,#00,#f2
db #52,#00,#d7,#51,#00,#f2,#52,#00
db #f2,#52,#00,#28,#53,#00,#28,#53
db #00,#28,#53,#00,#28,#53,#00,#31
db #53,#00,#31,#53,#00,#31,#53,#00
db #31,#53,#00,#31,#53,#00,#31,#53
db #00,#31,#53,#80,#67,#4c,#00,#d3
db #51,#00,#d3,#51,#00,#d3,#51,#00
db #d3,#51,#00,#69,#53,#00,#69,#53
db #00,#69,#53,#00,#69,#53,#00,#87
db #53,#00,#69,#53,#00,#87,#53,#00
db #87,#53,#00,#d7,#51,#00,#d7,#51
db #00,#d7,#51,#00,#a0,#53,#00,#a0
db #53,#00,#a0,#53,#00,#a0,#53,#00
db #a0,#53,#00,#a0,#53,#00,#a0,#53
db #00,#a0,#53,#00,#a0,#53,#00,#a0
db #53,#00,#bb,#53,#00,#bb,#53,#00
db #bb,#53,#00,#bb,#53,#00,#bb,#53
db #00,#bb,#53,#00,#bb,#53,#00,#d4
db #53,#00,#d4,#53,#00,#d4,#53,#00
db #fb,#53,#00,#fb,#53,#00,#fb,#53
db #00,#3c,#54,#00,#d4,#53,#00,#fb
db #53,#00,#3c,#54,#00,#d7,#51,#00
db #d7,#51,#00,#d7,#51,#00,#d7,#51
db #00,#d7,#51,#00,#d7,#51,#00,#5b
db #54,#00,#5b,#54,#00,#5b,#54,#00
db #ac,#54,#00,#5b,#54,#00,#ac,#54
db #00,#ac,#54,#00,#ac,#54,#00,#c2
db #54,#00,#c2,#54,#00,#c2,#54,#00
db #d7,#51,#00,#d7,#51,#00,#d8,#54
db #00,#d7,#51,#00,#d8,#54,#00,#d8
db #54,#00,#11,#55,#00,#11,#55,#00
db #11,#55,#00,#11,#55,#00,#1a,#55
db #00,#1a,#55,#00,#1a,#55,#00,#1a
db #55,#00,#1a,#55,#00,#1a,#55,#00
db #1a,#55,#80,#4e,#4d,#44,#41,#20
db #42,#40,#02,#40,#40,#02,#44,#40
db #02,#42,#40,#02,#40,#40,#02,#44
db #40,#02,#42,#40,#02,#40,#40,#02
db #44,#40,#02,#42,#40,#02,#40,#40
db #02,#3f,#40,#02,#3d,#40,#02,#3d
db #40,#02,#3d,#40,#02,#ff,#50,#40
db #02,#4e,#40,#02,#4c,#40,#02,#50
db #40,#02,#4e,#40,#02,#4c,#40,#02
db #50,#40,#02,#4e,#40,#02,#4c,#40
db #02,#50,#40,#02,#4e,#40,#02,#4c
db #40,#02,#4b,#40,#02,#49,#40,#02
db #49,#40,#02,#49,#40,#02,#ff,#5c
db #40,#02,#5a,#40,#02,#58,#40,#02
db #5c,#40,#02,#5a,#40,#02,#58,#40
db #02,#5c,#40,#02,#5a,#40,#02,#58
db #40,#02,#5c,#40,#02,#5a,#40,#02
db #58,#40,#02,#57,#40,#02,#55,#40
db #02,#55,#40,#02,#55,#40,#02,#ff
db #68,#40,#02,#66,#40,#02,#64,#40
db #02,#68,#40,#02,#66,#40,#02,#64
db #40,#02,#68,#40,#02,#66,#40,#02
db #64,#40,#02,#68,#40,#02,#66,#40
db #02,#64,#40,#02,#63,#40,#02,#61
db #40,#02,#61,#40,#02,#61,#40,#02
db #ff,#c4,#30,#44,#30,#03,#44,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#40,#30,#02
db #40,#30,#04,#3f,#30,#02,#3d,#30
db #02,#3b,#30,#04,#3b,#30,#02,#39
db #30,#02,#ff,#b4,#10,#fe,#01,#b6
db #10,#fe,#01,#b8,#10,#fe,#01,#b9
db #10,#fe,#01,#b4,#10,#fe,#01,#b6
db #10,#fe,#01,#b8,#10,#fe,#01,#b9
db #10,#fe,#01,#b4,#10,#fe,#01,#b6
db #10,#fe,#01,#b8,#10,#fe,#01,#b9
db #10,#fe,#01,#b4,#10,#fe,#01,#b6
db #10,#fe,#01,#b8,#10,#fe,#01,#b9
db #10,#fe,#01,#ff,#e4,#10,#fe,#01
db #e6,#10,#fe,#01,#e8,#10,#fe,#01
db #e9,#10,#fe,#01,#e4,#10,#fe,#01
db #e6,#10,#fe,#01,#dc,#10,#fe,#01
db #dd,#10,#fe,#01,#d8,#10,#fe,#01
db #da,#10,#fe,#01,#dc,#10,#fe,#01
db #dd,#10,#fe,#01,#d8,#10,#fe,#01
db #da,#10,#fe,#01,#dc,#10,#fe,#01
db #dd,#10,#fe,#01,#ff,#29,#20,#04
db #29,#20,#04,#38,#20,#04,#38,#20
db #04,#29,#20,#04,#29,#20,#04,#38
db #20,#04,#38,#20,#04,#ff,#35,#30
db #04,#35,#30,#04,#3e,#30,#04,#3e
db #30,#04,#35,#30,#04,#35,#30,#04
db #3e,#30,#04,#3e,#30,#04,#ff,#3b
db #30,#04,#3d,#30,#03,#3b,#30,#04
db #3f,#30,#03,#40,#30,#03,#3f,#30
db #03,#40,#30,#03,#3d,#30,#02,#c0
db #30,#c0,#30,#c2,#30,#c2,#30,#c2
db #30,#c2,#30,#c4,#30,#ff,#b8,#70
db #b6,#70,#b8,#70,#b9,#70,#bb,#70
db #bd,#70,#bf,#70,#c0,#70,#c2,#70
db #c4,#70,#b4,#70,#b6,#70,#b8,#70
db #b9,#70,#bb,#70,#bd,#70,#bf,#70
db #c0,#70,#c2,#70,#c4,#70,#b4,#70
db #b6,#70,#b8,#70,#b9,#70,#bb,#70
db #bd,#70,#bf,#70,#c0,#70,#c2,#70
db #c4,#70,#b4,#70,#b6,#70,#ff,#bd
db #30,#bd,#30,#bd,#30,#3d,#30,#02
db #3d,#30,#02,#3f,#30,#03,#3d,#30
db #03,#3b,#30,#04,#39,#30,#04,#38
db #30,#05,#36,#30,#06,#ff,#44,#7a
db #0f,#03,#42,#7a,#0e,#03,#40,#7a
db #0d,#03,#42,#7a,#0e,#03,#40,#7a
db #0d,#03,#44,#7a,#0e,#03,#42,#7a
db #0f,#03,#40,#7a,#0d,#03,#3f,#7a
db #0c,#03,#40,#7a,#0e,#05,#ff,#c4
db #7a,#0f,#0a,#0f,#02,#c2,#7a,#0e
db #0a,#0e,#01,#0a,#0e,#01,#c0,#7a
db #0d,#0a,#0d,#01,#0a,#0c,#01,#c2
db #7a,#0e,#0a,#0e,#02,#c0,#7a,#0d
db #0a,#0d,#02,#c4,#7a,#0e,#0a,#0e
db #02,#c2,#7a,#0f,#0a,#0f,#02,#c0
db #7a,#0d,#0a,#0d,#02,#bf,#7a,#0c
db #0a,#0c,#02,#c0,#7a,#0e,#0a,#0e
db #04,#ff,#44,#60,#02,#44,#60,#02
db #42,#60,#02,#c4,#60,#44,#60,#02
db #c4,#60,#44,#60,#02,#c4,#60,#42
db #60,#02,#44,#60,#02,#44,#60,#02
db #42,#60,#02,#c4,#60,#44,#60,#02
db #c4,#60,#44,#60,#02,#c4,#60,#42
db #60,#04,#ff,#fe,#20,#ff,#e8,#3a
db #10,#e8,#3a,#10,#e8,#3a,#10,#e8
db #3a,#20,#e8,#3a,#20,#e8,#3a,#20
db #e8,#3a,#30,#e8,#3a,#30,#e8,#3a
db #30,#e8,#3a,#40,#e8,#3a,#40,#e8
db #3a,#40,#e8,#3a,#50,#e8,#3a,#50
db #e8,#3a,#50,#e8,#3a,#40,#e8,#3a
db #40,#e8,#3a,#40,#e8,#3a,#30,#e8
db #3a,#30,#e8,#3a,#30,#e8,#3a,#20
db #e8,#3a,#20,#e8,#3a,#20,#e8,#3a
db #10,#e8,#3a,#10,#e8,#3a,#10,#e8
db #3a,#20,#e8,#3a,#10,#e8,#3a,#10
db #e8,#3a,#10,#e8,#3a,#10,#ff,#34
db #51,#20,#36,#50,#02,#38,#50,#02
db #39,#50,#02,#3b,#50,#02,#34,#50
db #02,#36,#50,#02,#38,#50,#02,#39
db #50,#02,#3b,#50,#02,#34,#50,#02
db #36,#50,#02,#38,#50,#02,#39,#50
db #02,#bb,#50,#b8,#60,#b8,#60,#b8
db #60,#ff,#bf,#80,#bf,#80,#c4,#80
db #c4,#80,#c4,#80,#c4,#80,#c4,#80
db #c4,#80,#c2,#80,#c2,#80,#c2,#80
db #c2,#80,#c2,#80,#c2,#80,#c2,#80
db #c2,#80,#c2,#80,#c2,#80,#c0,#80
db #c0,#80,#c0,#80,#c0,#80,#c0,#80
db #c0,#80,#c0,#80,#c0,#80,#c0,#80
db #c0,#80,#bf,#80,#bf,#80,#bf,#80
db #bf,#80,#ff,#01,#00,#20,#ff,#00
db #20,#ff,#3f,#40,#04,#3f,#40,#02
db #3f,#60,#02,#40,#40,#04,#42,#40
db #02,#3f,#60,#02,#40,#40,#04,#3f
db #40,#02,#3f,#60,#02,#3d,#40,#04
db #3b,#40,#02,#3f,#60,#02,#ff,#38
db #60,#04,#38,#60,#04,#38,#60,#04
db #38,#60,#04,#38,#60,#04,#38,#60
db #04,#38,#60,#04,#38,#60,#04,#ff
db #39,#60,#04,#39,#60,#04,#39,#60
db #04,#38,#60,#03,#38,#60,#03,#38
db #60,#03,#38,#60,#02,#38,#60,#02
db #b8,#60,#b8,#60,#b8,#60,#b8,#60
db #b8,#60,#b8,#60,#b8,#60,#ff,#39
db #60,#02,#39,#60,#02,#39,#60,#02
db #39,#60,#02,#39,#60,#02,#39,#60
db #02,#39,#60,#02,#39,#60,#02,#39
db #60,#02,#39,#60,#02,#39,#60,#02
db #39,#60,#02,#39,#60,#02,#39,#60
db #02,#39,#60,#02,#39,#60,#02,#ff
db #bb,#60,#bb,#60,#bb,#60,#3b,#60
db #02,#3b,#60,#02,#3b,#60,#03,#3b
db #60,#03,#3b,#60,#04,#3b,#60,#04
db #3b,#60,#05,#3b,#60,#06,#ff,#b8
db #80,#38,#c0,#02,#b8,#80,#38,#c0
db #02,#b8,#80,#38,#c0,#02,#b8,#80
db #38,#c0,#02,#b8,#80,#38,#c0,#02
db #b8,#80,#38,#c0,#02,#b9,#80,#38
db #c0,#02,#b9,#80,#38,#c0,#02,#b8
db #80,#38,#c0,#02,#b8,#80,#38,#c0
db #04,#ff,#40,#90,#02,#42,#90,#04
db #38,#90,#03,#b8,#90,#b8,#80,#38
db #90,#02,#38,#90,#02,#b8,#80,#39
db #90,#02,#39,#90,#02,#b9,#90,#b8
db #80,#39,#90,#02,#39,#90,#02,#39
db #90,#02,#39,#90,#02,#b9,#90,#c2
db #90,#ff,#39,#80,#02,#bb,#80,#b8
db #90,#3d,#80,#02,#39,#80,#02,#bb
db #80,#b8,#90,#3d,#80,#02,#39,#80
db #02,#3b,#80,#02,#bd,#80,#b8,#90
db #39,#80,#02,#3b,#80,#02,#bd,#80
db #b8,#90,#39,#80,#02,#3b,#80,#02
db #bd,#80,#b8,#90,#39,#80,#02,#ff
db #00,#1d,#c4,#80,#c4,#80,#c4,#80
db #ff,#b8,#60,#b8,#c0,#38,#60,#02
db #b8,#60,#b8,#c0,#38,#60,#02,#b8
db #60,#b8,#60,#38,#60,#02,#39,#c0
db #02,#3b,#c0,#02,#b8,#60,#b8,#60
db #3b,#c0,#02,#b8,#60,#3b,#c0,#02
db #bb,#c0,#b8,#60,#3b,#c0,#02,#b8
db #60,#bb,#c0,#b8,#60,#38,#60,#02
db #ff,#00,#01,#44,#80,#02,#44,#80
db #04,#44,#80,#04,#44,#80,#02,#44
db #80,#04,#44,#80,#04,#42,#80,#02
db #42,#80,#04,#42,#80,#05,#ff,#38
db #90,#04,#38,#90,#04,#38,#90,#04
db #38,#90,#04,#38,#90,#04,#38,#90
db #04,#38,#90,#04,#38,#90,#04,#ff
db #00,#02,#44,#50,#04,#42,#50,#04
db #40,#50,#04,#42,#50,#04,#40,#50
db #04,#42,#50,#04,#40,#50,#04,#3f
db #50,#02,#ff,#44,#80,#04,#44,#80
db #04,#44,#80,#04,#44,#80,#04,#44
db #80,#04,#44,#80,#04,#44,#80,#04
db #44,#80,#04,#ff,#44,#80,#04,#44
db #80,#04,#44,#80,#04,#44,#80,#03
db #44,#80,#03,#44,#80,#03,#44,#80
db #02,#44,#80,#02,#c4,#80,#c4,#80
db #c4,#80,#c4,#80,#c4,#80,#c4,#80
db #c4,#80,#ff,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#c4,#80,#c4,#80,#c4
db #80,#c4,#80,#ff,#c4,#80,#c4,#80
db #c4,#80,#44,#80,#02,#44,#80,#02
db #44,#80,#03,#44,#80,#03,#44,#80
db #04,#44,#80,#04,#44,#80,#05,#44
db #80,#06,#ff,#e8,#3a,#0f,#e6,#3a
db #0f,#e4,#3a,#0f,#e8,#3a,#0f,#e6
db #3a,#0f,#e4,#3a,#0f,#e8,#30,#e6
db #3a,#0e,#e4,#3a,#0e,#e8,#3a,#0e
db #e6,#3a,#0e,#e4,#3a,#0e,#e8,#30
db #e6,#30,#e4,#30,#e8,#30,#e6,#30
db #e4,#3a,#0d,#e8,#3a,#0d,#e6,#30
db #e4,#30,#e8,#30,#e6,#30,#e4,#30
db #e8,#30,#e6,#3a,#0c,#e4,#30,#e8
db #30,#e6,#38,#0c,#e4,#30,#ef,#30
db #ed,#3a,#09,#ff,#44,#00,#05,#42
db #00,#05,#40,#00,#05,#3f,#00,#05
db #3d,#00,#05,#3b,#00,#05,#39,#00
db #02,#ff,#44,#01,#50,#42,#00,#05
db #40,#00,#05,#3f,#00,#05,#3d,#00
db #05,#3b,#00,#05,#39,#00,#02,#ff
db #b8,#60,#38,#60,#02,#38,#60,#02
db #b8,#60,#b8,#60,#b8,#c0,#38,#60
db #02,#b8,#60,#38,#60,#02,#b8,#60
db #b8,#c0,#b8,#60,#38,#60,#02,#38
db #60,#02,#b8,#60,#b8,#60,#b8,#c0
db #38,#60,#02,#b8,#60,#38,#60,#02
db #b8,#60,#b8,#c0,#b8,#60,#b8,#60
db #ff,#00,#1d,#bb,#90,#b8,#b0,#bb
db #a0,#ff,#38,#90,#02,#38,#90,#02
db #b8,#90,#b8,#90,#38,#90,#02,#b8
db #90,#b8,#90,#b8,#90,#38,#90,#02
db #b8,#90,#38,#90,#02,#39,#b0,#02
db #39,#b0,#02,#bb,#b0,#bb,#b0,#3b
db #b0,#02,#bd,#b0,#bd,#b0,#3d,#b0
db #02,#3d,#b0,#02,#bb,#b0,#bb,#b0
db #ff
nop
jp l555b	; Teknosis
jp l55ef
jp l55d3
.l555b
xor a
ld hl,l5b06
call l55cc
ld hl,l5b34
call l55cc
ld hl,l5b62
call l55cc
ld ix,l5b02
ld iy,l5b8c
ld de,#002e
ld b,#03
.l557b
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l557b
ld hl,l5a1b
ld (hl),#02
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l5a17),hl
ld (l5a19),hl
ld a,#0c
ld c,d
call l59f7
ld a,#0d
ld c,d
jp l59f7
.l55cc
ld b,#2a
.l55ce
ld (hl),a
inc hl
djnz l55ce
ret
.l55d3
ld a,#07
ld c,#3f
call l59f7
ld a,#08
ld c,#00
call l59f7
ld a,#09
ld c,#00
call l59f7
ld a,#0a
ld c,#00
jp l59f7
.l55ef
ld hl,l5a1d
dec (hl)
ld ix,l5b02
ld bc,l5b10
call l5691
ld ix,l5b30
ld bc,l5b3e
call l5691
ld ix,l5b5e
ld bc,l5b6c
call l5691
ld hl,l5a16
ld de,l5a1d
ld b,#06
call l566e
ld b,#07
call l566e
ld b,#0b
call l566e
ld b,#0d
call l566e
ld de,l5a1d
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l5b21
call l5647
ld hl,l5b4f
call l5647
ld hl,l5b7d
.l5647
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l565c
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l565c
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l566e
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l59f7
.l5679
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l59f7
.l5691
ld a,(l5a1d)
or a
jp nz,l5749
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l5749
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l5679
or a
jp z,l573e
ld r,a
and #7f
cp #10
jr c,l5719
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l5891
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l56f2
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l56f2
rrca
ld c,a
ld hl,l5b92
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l5711
ld (ix+#1e),b
.l5711
ld a,i
pop hl
ld d,b
and #0f
jr z,l5732
.l5719
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l5a22
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l5732
ld a,d
or a
jr nz,l5740
ld a,r
bit 7,a
ld a,#01
jr nz,l5740
.l573e
ld a,(hl)
inc hl
.l5740
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l5749
ld a,(ix+#17)
or a
jr nz,l575f
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l575f
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l5775
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l5775
ld a,(ix+#0d)
or a
jr z,l5783
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l57a1
.l5783
ld a,(ix+#1a)
or a
jp z,l57a8
ld c,a
cp #03
jr nz,l5790
xor a
.l5790
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l57a1
ld a,(ix+#18)
dec c
jr z,l57a1
ld a,(ix+#19)
.l57a1
add (ix+#07)
ld b,d
call l5891
.l57a8
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l57d0
dec (ix+#1b)
jr nz,l57d0
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l5808
.l57d0
ld a,(ix+#29)
or a
jr z,l5808
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l57ff
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l57f6
ld (ix+#29),#ff
jr l57ff
.l57f6
cp (ix+#2b)
jr nz,l57ff
ld (ix+#29),#01
.l57ff
ld b,d
or a
jp p,l5805
dec b
.l5805
ld c,a
jr l5813
.l5808
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l5813
pop hl
bit 7,(ix+#14)
jr z,l581c
ld h,d
ld l,d
.l581c
add hl,bc
ld c,l
ld a,(ix+#01)
call l59f7
ld c,h
ld a,(ix+#02)
call l59f7
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l586f
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l585e
dec (ix+#09)
jr nz,l585e
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l5856
xor a
jr l585b
.l5856
cp #10
jr nz,l585b
dec a
.l585b
ld (ix+#1e),a
.l585e
ld a,b
sub (ix+#1e)
jr nc,l5865
xor a
.l5865
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l59f7
.l586f
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l5a1e)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l588d
ld l,a
ld a,b
cpl
and h
ld h,a
.l588d
ld (l5a1e),hl
ret
.l5891
ld hl,l5a40
cp #61
jr nc,l589b
add a
ld c,a
add hl,bc
.l589b
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l58a5
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l59ca
ld (ix+#1e),a
jp l5732
.l58b7
dec b
.l58b8
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l58c3
neg
.l58c3
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l5732
.l58d9
dec b
jr l58dd
.l58dc
inc b
.l58dd
call l59ca
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l5732
.l58ec
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l59af
.l58fd
ld a,(hl)
inc hl
or a
jr z,l591f
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l591f
ld (ix+#29),a
jp l5732
.l5925
dec hl
ld a,(hl)
and #0f
ld (l5a21),a
inc hl
ld a,(hl)
inc hl
ld (l5a20),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l5732
.l593f
ld a,(hl)
or a
jr z,l5950
call l59cc
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l5732
.l5950
ld hl,#0101
ld (l5a1c),hl
jp l5732
.l5959
call l59ca
ld (ix+#1e),a
jp l5732
.l5962
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l59db
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l59db
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l5732
.l5984
ld a,(hl)
inc hl
ld (l5a1b),a
jp l5732
.l598c
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l5732
.l59ab
call l59ca
add a
.l59af
ld b,#00
ld c,a
push hl
ld hl,l5c12
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l5732
.l59ca
ld a,(hl)
inc hl
.l59cc
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l59db
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l5b92
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l59f7
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l5a16
ret
.l5a1e equ $ + 7
.l5a1d equ $ + 6
.l5a1c equ $ + 5
.l5a1b equ $ + 4
.l5a19 equ $ + 2
.l5a17
db #00,#00,#00,#00,#00,#00,#00,#00
.l5a21 equ $ + 2
.l5a20 equ $ + 1
db #38,#00,#00
.l5a22
dw l58a5,l58b8,l58b7,l58dc
dw l58d9,l58ec,l58fd,l5925
dw l593f,l5925,l5959,l5962
dw l5984,l598c,l59ab
.l5a40
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l5b06 equ $ + 4
.l5b02
db #08,#00,#01,#08,#00,#00,#00,#00
.l5b10 equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5b21 equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5b30 equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l5b34 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l5b3e equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5b4f equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5b5e equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l5b62
db #00,#00,#00,#00,#00,#00,#00,#00
.l5b6c equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5b7d equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5b8c equ $ + 2
db #00,#00,#32,#5e,#c8,#5e,#5e,#5f
.l5b92
db #be,#1b,#04,#5c,#a4,#5d,#a0,#48
db #24,#15,#f6,#14,#06,#43,#e2,#2d
db #32,#5c,#72,#5c,#92,#5c,#00,#00
db #b2,#5c,#f2,#5c,#12,#5d,#80,#00
db #32,#5d,#72,#5d,#92,#5c,#08,#18
db #32,#5c,#92,#5d,#b2,#5d,#9a,#06
db #32,#5c,#d2,#5d,#f2,#5d,#00,#00
db #f7,#14,#c9,#14,#c9,#14,#a4,#ff
db #f6,#14,#c8,#14,#f6,#14,#d2,#ff
db #32,#5c,#12,#5e,#92,#5c,#00,#00
db #24,#15,#f6,#14,#f6,#14,#d2,#ff
db #f6,#14,#f6,#14,#f6,#14,#d2,#ff
db #f6,#14,#f6,#14,#f6,#14,#d2,#ff
db #f6,#14,#f6,#14,#f6,#14,#d2,#ff
db #f6,#14,#24,#15,#24,#15,#00,#00
db #24,#15,#24,#15,#24,#15,#00,#00
.l5c12
db #24,#15,#24,#15,#24,#15,#24,#15
db #24,#15,#24,#15,#24,#15,#24,#15
db #24,#15,#24,#15,#24,#15,#24,#15
db #24,#15,#24,#15,#24,#15,#24,#15
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0d,#0b,#09,#07,#05,#03,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#01,#01,#01,#01,#01,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
db #09,#09,#09,#08,#08,#07,#07,#06
db #05,#04,#03,#02,#01,#00,#00,#00
db #00,#f4,#5f,#00,#f4,#5f,#00,#f4
db #5f,#00,#f4,#5f,#00,#f4,#5f,#00
db #f4,#5f,#00,#f4,#5f,#00,#f4,#5f
db #00,#f4,#5f,#00,#f4,#5f,#00,#6e
db #60,#00,#6e,#60,#00,#6e,#60,#00
db #f4,#5f,#00,#6e,#60,#00,#f4,#5f
db #00,#6e,#60,#00,#f4,#5f,#00,#f4
db #5f,#00,#e8,#60,#00,#e8,#60,#00
db #e8,#60,#00,#e8,#60,#00,#e8,#60
db #00,#e8,#60,#00,#e8,#60,#00,#e8
db #60,#00,#e8,#60,#00,#eb,#60,#00
db #eb,#60,#00,#eb,#60,#00,#eb,#60
db #00,#eb,#60,#00,#eb,#60,#00,#eb
db #60,#00,#1c,#61,#00,#1c,#61,#00
db #eb,#60,#00,#eb,#60,#00,#eb,#60
db #00,#eb,#60,#00,#eb,#60,#00,#1c
db #61,#00,#1c,#61,#00,#1c,#61,#00
db #eb,#60,#00,#1c,#61,#00,#1c,#61
db #00,#38,#61,#80,#32,#5e,#00,#e8
db #60,#00,#e8,#60,#00,#e8,#60,#00
db #3b,#61,#00,#e8,#60,#00,#3b,#61
db #00,#e8,#60,#00,#3b,#61,#00,#e8
db #60,#00,#3b,#61,#00,#9c,#61,#00
db #9c,#61,#00,#9c,#61,#00,#fd,#61
db #00,#9c,#61,#00,#fd,#61,#00,#9c
db #61,#00,#3b,#61,#00,#fd,#61,#00
db #5e,#62,#00,#5e,#62,#00,#bf,#62
db #00,#5e,#62,#00,#bf,#62,#00,#5e
db #62,#00,#bf,#62,#00,#5e,#62,#00
db #bf,#62,#00,#e8,#60,#00,#e8,#60
db #00,#20,#63,#00,#e8,#60,#00,#20
db #63,#00,#20,#63,#00,#20,#63,#00
db #a1,#63,#00,#a1,#63,#00,#20,#63
db #00,#20,#63,#00,#20,#63,#00,#20
db #63,#00,#20,#63,#00,#a1,#63,#00
db #a1,#63,#00,#a1,#63,#00,#20,#63
db #00,#a1,#63,#00,#a1,#63,#00,#38
db #61,#80,#c8,#5e,#00,#e8,#60,#00
db #e8,#60,#00,#e8,#60,#00,#e8,#60
db #00,#e8,#60,#00,#e8,#60,#00,#e8
db #60,#00,#e8,#60,#00,#e8,#60,#00
db #e8,#60,#00,#e8,#60,#00,#e8,#60
db #00,#e8,#60,#00,#03,#64,#00,#e8
db #60,#00,#03,#64,#00,#e8,#60,#00
db #e8,#60,#00,#03,#64,#00,#e8,#60
db #00,#e8,#60,#00,#e8,#60,#00,#e8
db #60,#00,#e8,#60,#00,#e8,#60,#00
db #e8,#60,#00,#e8,#60,#00,#e8,#60
db #00,#e8,#60,#00,#e8,#60,#00,#e8
db #60,#00,#e8,#60,#00,#e8,#60,#00
db #e8,#60,#00,#e8,#60,#00,#65,#64
db #00,#65,#64,#00,#e8,#60,#00,#e8
db #60,#00,#e8,#60,#00,#e8,#60,#00
db #e8,#60,#00,#65,#64,#00,#65,#64
db #00,#65,#64,#00,#e8,#60,#00,#65
db #64,#00,#65,#64,#00,#38,#61,#80
db #5e,#5f,#b4,#20,#b6,#20,#b8,#20
db #b9,#20,#bb,#20,#bd,#20,#bf,#20
db #c0,#20,#c2,#20,#c4,#20,#b4,#20
db #b6,#20,#b8,#20,#b9,#20,#bb,#20
db #bd,#20,#bf,#20,#c0,#20,#c2,#20
db #c4,#20,#b4,#20,#b6,#20,#b8,#20
db #b9,#20,#bb,#20,#bd,#20,#bf,#20
db #c0,#20,#c2,#20,#c4,#20,#b4,#20
db #b6,#20,#b8,#20,#b9,#20,#bb,#20
db #bd,#20,#bf,#20,#c0,#20,#c2,#20
db #c4,#20,#b4,#20,#b6,#20,#b8,#20
db #b9,#20,#bb,#20,#bd,#20,#bf,#20
db #c0,#20,#c2,#20,#c4,#20,#c4,#20
db #c2,#20,#c0,#20,#bf,#20,#bd,#20
db #bb,#20,#b9,#20,#b8,#20,#b6,#20
db #34,#20,#05,#ff,#00,#01,#b6,#20
db #b8,#20,#b9,#20,#bb,#20,#bd,#20
db #bf,#20,#c0,#20,#c2,#20,#c4,#20
db #b4,#20,#b6,#20,#b8,#20,#b9,#20
db #bb,#20,#bd,#20,#bf,#20,#c0,#20
db #c2,#20,#c4,#20,#b4,#20,#b6,#20
db #b8,#20,#b9,#20,#bb,#20,#bd,#20
db #bf,#20,#c0,#20,#c2,#20,#c4,#20
db #b4,#20,#b6,#20,#b8,#20,#b9,#20
db #bb,#20,#bd,#20,#bf,#20,#c0,#20
db #c2,#20,#c4,#20,#b4,#20,#b6,#20
db #b8,#20,#b9,#20,#bb,#20,#bd,#20
db #bf,#20,#c0,#20,#c2,#20,#c4,#20
db #c4,#20,#c2,#20,#c0,#20,#bf,#20
db #bd,#20,#bb,#20,#b9,#20,#b8,#20
db #b6,#20,#34,#20,#05,#ff,#00,#40
db #ff,#2e,#20,#04,#35,#20,#04,#2e
db #20,#04,#35,#20,#04,#2e,#20,#04
db #35,#20,#04,#2e,#20,#04,#35,#20
db #04,#2e,#20,#04,#35,#20,#04,#2e
db #20,#04,#35,#20,#04,#2e,#20,#04
db #35,#20,#04,#2e,#20,#04,#35,#20
db #04,#ff,#3f,#40,#07,#40,#40,#08
db #3f,#40,#06,#40,#40,#07,#3f,#40
db #07,#40,#40,#07,#3f,#40,#06,#40
db #40,#07,#3f,#40,#09,#ff,#fe,#40
db #ff,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #42,#30,#02,#42,#30,#02,#42,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #42,#30,#02,#42,#30,#02,#42,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #42,#30,#02,#42,#30,#02,#42,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #42,#30,#02,#42,#30,#02,#42,#30
db #02,#ff,#3f,#60,#02,#40,#60,#02
db #3f,#60,#02,#40,#60,#02,#3f,#60
db #02,#40,#60,#02,#3f,#60,#02,#40
db #60,#02,#3f,#60,#02,#40,#60,#02
db #3f,#60,#02,#40,#60,#02,#3f,#60
db #02,#40,#60,#02,#3f,#60,#02,#40
db #60,#02,#3f,#60,#02,#40,#60,#02
db #3f,#60,#02,#40,#60,#02,#3f,#60
db #02,#40,#60,#02,#3f,#60,#02,#40
db #60,#02,#3f,#60,#02,#40,#60,#02
db #3f,#60,#02,#40,#60,#02,#3f,#60
db #02,#40,#60,#02,#3f,#60,#02,#40
db #60,#02,#ff,#3d,#60,#02,#44,#60
db #02,#3d,#60,#02,#44,#60,#02,#3d
db #60,#02,#44,#60,#02,#3d,#60,#02
db #44,#60,#02,#3d,#60,#02,#44,#60
db #02,#3d,#60,#02,#44,#60,#02,#3d
db #60,#02,#44,#60,#02,#3d,#60,#02
db #44,#60,#02,#3d,#60,#02,#44,#60
db #02,#3d,#60,#02,#44,#60,#02,#3d
db #60,#02,#44,#60,#02,#3d,#60,#02
db #44,#60,#02,#3d,#60,#02,#44,#60
db #02,#3d,#60,#02,#44,#60,#02,#3d
db #60,#02,#44,#60,#02,#3d,#60,#02
db #44,#60,#02,#ff,#3d,#20,#02,#44
db #20,#02,#3d,#20,#02,#44,#20,#02
db #3d,#20,#02,#44,#20,#02,#3d,#20
db #02,#44,#20,#02,#3d,#20,#02,#44
db #20,#02,#3d,#20,#02,#44,#20,#02
db #3d,#20,#02,#44,#20,#02,#3d,#20
db #02,#44,#20,#02,#3d,#20,#02,#44
db #20,#02,#3d,#20,#02,#44,#20,#02
db #3d,#20,#02,#44,#20,#02,#3d,#20
db #02,#44,#20,#02,#3d,#20,#02,#44
db #20,#02,#3d,#20,#02,#44,#20,#02
db #3d,#20,#02,#44,#20,#02,#3d,#20
db #02,#44,#20,#02,#ff,#30,#20,#02
db #35,#20,#02,#30,#20,#02,#35,#20
db #02,#30,#20,#02,#35,#20,#02,#30
db #20,#02,#35,#20,#02,#30,#20,#02
db #35,#20,#02,#30,#20,#02,#35,#20
db #02,#30,#20,#02,#35,#20,#02,#30
db #20,#02,#35,#20,#02,#30,#20,#02
db #35,#20,#02,#30,#20,#02,#35,#20
db #02,#30,#20,#02,#35,#20,#02,#30
db #20,#02,#35,#20,#02,#30,#20,#02
db #35,#20,#02,#30,#20,#02,#35,#20
db #02,#30,#20,#02,#35,#20,#02,#30
db #20,#02,#35,#20,#02,#ff,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#c4,#90
db #c4,#90,#c4,#90,#c4,#90,#c4,#90
db #bf,#90,#c0,#90,#bf,#90,#c0,#90
db #bf,#90,#c0,#90,#bf,#90,#c0,#90
db #bf,#90,#c0,#90,#bf,#90,#c0,#90
db #bf,#90,#c0,#90,#bf,#90,#c0,#90
db #c4,#90,#c4,#90,#c4,#90,#c4,#90
db #c4,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#c4,#90
db #c4,#90,#c4,#90,#c4,#90,#ff,#00
db #01,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#34,#50
db #02,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#34,#50
db #02,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#34,#50
db #02,#34,#50,#02,#34,#50,#02,#34
db #50,#02,#34,#50,#02,#34,#50,#02
db #34,#50,#02,#34,#50,#02,#b4,#50
db #ff,#00,#01,#42,#30,#02,#42,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #42,#30,#02,#42,#30,#02,#42,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #42,#30,#02,#42,#30,#02,#42,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #42,#30,#02,#42,#30,#02,#42,#30
db #02,#42,#30,#02,#42,#30,#02,#42
db #30,#02,#42,#30,#02,#42,#30,#02
db #c2,#30,#ff,#34,#30,#02,#34,#30
db #02,#34,#30,#02,#34,#30,#02,#34
db #30,#02,#34,#30,#02,#34,#30,#02
db #34,#30,#02,#34,#30,#02,#34,#30
db #02,#34,#30,#02,#34,#30,#02,#34
db #30,#02,#34,#30,#02,#34,#30,#02
db #34,#30,#02,#34,#30,#02,#34,#30
db #02,#34,#30,#02,#34,#30,#02,#34
db #30,#02,#34,#30,#02,#34,#30,#02
db #34,#30,#02,#34,#30,#02,#34,#30
db #02,#34,#30,#02,#34,#30,#02,#34
db #30,#02,#34,#30,#02,#34,#30,#02
db #34,#30,#02,#ff
nop
jp l64d0	; Porrosis
jp l6564
jp l6548
.l64d0
xor a
ld hl,l6a7b
call l6541
ld hl,l6aa9
call l6541
ld hl,l6ad7
call l6541
ld ix,l6a77
ld iy,l6b01
ld de,#002e
ld b,#03
.l64f0
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l64f0
ld hl,l6990
ld (hl),#02
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l698c),hl
ld (l698e),hl
ld a,#0c
ld c,d
call l696c
ld a,#0d
ld c,d
jp l696c
.l6541
ld b,#2a
.l6543
ld (hl),a
inc hl
djnz l6543
ret
.l6548
ld a,#07
ld c,#3f
call l696c
ld a,#08
ld c,#00
call l696c
ld a,#09
ld c,#00
call l696c
ld a,#0a
ld c,#00
jp l696c
.l6564
ld hl,l6992
dec (hl)
ld ix,l6a77
ld bc,l6a85
call l6606
ld ix,l6aa5
ld bc,l6ab3
call l6606
ld ix,l6ad3
ld bc,l6ae1
call l6606
ld hl,l698b
ld de,l6992
ld b,#06
call l65e3
ld b,#07
call l65e3
ld b,#0b
call l65e3
ld b,#0d
call l65e3
ld de,l6992
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l6a96
call l65bc
ld hl,l6ac4
call l65bc
ld hl,l6af2
.l65bc
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l65d1
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l65d1
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l65e3
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l696c
.l65ee
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l696c
.l6606
ld a,(l6992)
or a
jp nz,l66be
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l66be
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l65ee
or a
jp z,l66b3
ld r,a
and #7f
cp #10
jr c,l668e
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l6806
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l6667
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l6667
rrca
ld c,a
ld hl,l6b07
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l6686
ld (ix+#1e),b
.l6686
ld a,i
pop hl
ld d,b
and #0f
jr z,l66a7
.l668e
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l6997
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l66a7
ld a,d
or a
jr nz,l66b5
ld a,r
bit 7,a
ld a,#01
jr nz,l66b5
.l66b3
ld a,(hl)
inc hl
.l66b5
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l66be
ld a,(ix+#17)
or a
jr nz,l66d4
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l66d4
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l66ea
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l66ea
ld a,(ix+#0d)
or a
jr z,l66f8
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l6716
.l66f8
ld a,(ix+#1a)
or a
jp z,l671d
ld c,a
cp #03
jr nz,l6705
xor a
.l6705
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l6716
ld a,(ix+#18)
dec c
jr z,l6716
ld a,(ix+#19)
.l6716
add (ix+#07)
ld b,d
call l6806
.l671d
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l6745
dec (ix+#1b)
jr nz,l6745
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l677d
.l6745
ld a,(ix+#29)
or a
jr z,l677d
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l6774
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l676b
ld (ix+#29),#ff
jr l6774
.l676b
cp (ix+#2b)
jr nz,l6774
ld (ix+#29),#01
.l6774
ld b,d
or a
jp p,l677a
dec b
.l677a
ld c,a
jr l6788
.l677d
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l6788
pop hl
bit 7,(ix+#14)
jr z,l6791
ld h,d
ld l,d
.l6791
add hl,bc
ld c,l
ld a,(ix+#01)
call l696c
ld c,h
ld a,(ix+#02)
call l696c
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l67e4
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l67d3
dec (ix+#09)
jr nz,l67d3
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l67cb
xor a
jr l67d0
.l67cb
cp #10
jr nz,l67d0
dec a
.l67d0
ld (ix+#1e),a
.l67d3
ld a,b
sub (ix+#1e)
jr nc,l67da
xor a
.l67da
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l696c
.l67e4
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l6993)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l6802
ld l,a
ld a,b
cpl
and h
ld h,a
.l6802
ld (l6993),hl
ret
.l6806
ld hl,l69b5
cp #61
jr nc,l6810
add a
ld c,a
add hl,bc
.l6810
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l681a
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l693f
ld (ix+#1e),a
jp l66a7
.l682c
dec b
.l682d
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l6838
neg
.l6838
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l66a7
.l684e
dec b
jr l6852
.l6851
inc b
.l6852
call l693f
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l66a7
.l6861
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l6924
.l6872
ld a,(hl)
inc hl
or a
jr z,l6894
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l6894
ld (ix+#29),a
jp l66a7
.l689a
dec hl
ld a,(hl)
and #0f
ld (l6996),a
inc hl
ld a,(hl)
inc hl
ld (l6995),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l66a7
.l68b4
ld a,(hl)
or a
jr z,l68c5
call l6941
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l66a7
.l68c5
ld hl,#0101
ld (l6991),hl
jp l66a7
.l68ce
call l693f
ld (ix+#1e),a
jp l66a7
.l68d7
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l6950
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l6950
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l66a7
.l68f9
ld a,(hl)
inc hl
ld (l6990),a
jp l66a7
.l6901
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l66a7
.l6920
call l693f
add a
.l6924
ld b,#00
ld c,a
push hl
ld hl,l6b87
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l66a7
.l693f
ld a,(hl)
inc hl
.l6941
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l6950
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l6b07
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l696c
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l698b
ret
.l6993 equ $ + 7
.l6992 equ $ + 6
.l6991 equ $ + 5
.l6990 equ $ + 4
.l698e equ $ + 2
.l698c
db #00,#00,#00,#00,#00,#00,#00,#00
.l6996 equ $ + 2
.l6995 equ $ + 1
db #38,#00,#00
.l6997
dw l681a,l682d,l682c,l6851
dw l684e,l6861,l6872,l689a
dw l68b4,l689a,l68ce,l68d7
dw l68f9,l6901,l6920
.l69b5
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l6a7b equ $ + 4
.l6a77
db #08,#00,#01,#08,#00,#00,#00,#00
.l6a85 equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6a96 equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6aa5 equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l6aa9 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l6ab3 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6ac4 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6ad3 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l6ad7
db #00,#00,#00,#00,#00,#00,#00,#00
.l6ae1 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6af2 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6b01 equ $ + 2
db #00,#00,#e7,#6d,#2c,#6e,#71,#6e
.l6b07
db #33,#2b,#32,#49,#ef,#82,#56,#5e
db #56,#5e,#80,#91,#c0,#91,#07,#6c
db #a7,#6b,#e7,#6b,#07,#6c,#00,#00
db #27,#6c,#67,#6c,#87,#6c,#80,#00
db #32,#49,#40,#90,#e0,#91,#67,#6d
db #a7,#6b,#a7,#6c,#c7,#6c,#9a,#06
db #99,#24,#cb,#6d,#cb,#6d,#32,#49
db #e7,#6c,#27,#6d,#07,#6c,#48,#08
db #99,#24,#cb,#6d,#32,#49,#99,#24
db #99,#24,#32,#49,#32,#49,#99,#24
db #a7,#6b,#47,#6d,#67,#6d,#00,#00
db #a7,#6b,#87,#6d,#07,#6c,#00,#00
db #32,#49,#32,#49,#32,#49,#99,#24
db #a7,#6b,#a7,#6d,#c7,#6d,#00,#00
db #32,#49,#99,#24,#99,#24,#00,#00
db #99,#24,#99,#24,#99,#24,#00,#00
.l6b87
db #99,#24,#99,#24,#99,#24,#99,#24
db #99,#24,#99,#24,#99,#24,#99,#24
db #99,#24,#99,#24,#99,#24,#99,#24
db #99,#24,#99,#24,#99,#24,#99,#24
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0b,#09,#07,#05,#03,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#01,#01,#01,#01,#01,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #07,#08,#08,#08,#08,#08,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#03,#03,#03,#02,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#05,#08,#0a,#0a,#09,#08,#06
db #03,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#01,#02,#03,#04,#05,#06,#07
db #08,#09,#09,#0a,#0b,#0c,#0d,#0e
db #0d,#0c,#0b,#0a,#08,#05,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#b6,#6e,#00,#b6,#6e,#00,#b6
db #6e,#00,#b6,#6e,#00,#b6,#6e,#00
db #b6,#6e,#00,#b6,#6e,#00,#b6,#6e
db #00,#b6,#6e,#00,#b6,#6e,#00,#b6
db #6e,#00,#b6,#6e,#00,#b6,#6e,#00
db #b6,#6e,#00,#b6,#6e,#00,#b6,#6e
db #00,#b6,#6e,#00,#b6,#6e,#00,#b6
db #6e,#00,#17,#6f,#00,#b6,#6e,#00
db #17,#6f,#80,#e7,#6d,#00,#66,#6f
db #00,#66,#6f,#00,#69,#6f,#00,#66
db #6f,#00,#69,#6f,#00,#69,#6f,#00
db #9c,#6f,#00,#9c,#6f,#00,#66,#6f
db #00,#66,#6f,#00,#66,#6f,#00,#66
db #6f,#00,#66,#6f,#00,#66,#6f,#00
db #66,#6f,#00,#66,#6f,#00,#66,#6f
db #00,#cf,#6f,#00,#cf,#6f,#00,#00
db #70,#00,#cf,#6f,#00,#00,#70,#80
db #2c,#6e,#00,#66,#6f,#00,#66,#6f
db #00,#66,#6f,#00,#66,#6f,#00,#66
db #6f,#00,#66,#6f,#00,#09,#70,#00
db #09,#70,#00,#66,#6f,#00,#54,#70
db #00,#54,#70,#00,#66,#6f,#00,#87
db #70,#00,#66,#6f,#00,#87,#70,#00
db #66,#6f,#00,#87,#70,#00,#e8,#70
db #00,#e8,#70,#00,#66,#6f,#00,#e8
db #70,#00,#66,#6f,#80,#71,#6e,#44
db #70,#02,#3f,#70,#02,#40,#70,#02
db #42,#70,#02,#44,#70,#02,#3f,#70
db #02,#40,#70,#02,#42,#70,#02,#44
db #70,#02,#3f,#70,#02,#40,#70,#02
db #42,#70,#02,#44,#70,#02,#3f,#70
db #02,#40,#70,#02,#42,#70,#02,#44
db #70,#02,#3f,#70,#02,#40,#70,#02
db #42,#70,#02,#44,#70,#02,#3f,#70
db #02,#40,#70,#02,#42,#70,#02,#44
db #70,#02,#3f,#70,#02,#40,#70,#02
db #42,#70,#02,#44,#70,#02,#3f,#70
db #02,#40,#70,#02,#42,#70,#02,#ff
db #44,#70,#02,#3f,#70,#02,#40,#70
db #02,#42,#70,#02,#44,#70,#02,#3f
db #70,#02,#40,#70,#02,#42,#70,#02
db #44,#70,#02,#3f,#70,#02,#40,#70
db #02,#42,#70,#02,#44,#70,#08,#44
db #70,#02,#3f,#70,#02,#40,#70,#02
db #42,#70,#02,#44,#70,#02,#3f,#70
db #02,#40,#70,#02,#42,#70,#02,#44
db #70,#02,#3f,#70,#02,#40,#70,#02
db #42,#70,#02,#44,#70,#08,#ff,#00
db #40,#ff,#00,#01,#44,#30,#04,#42
db #30,#04,#44,#30,#04,#44,#30,#04
db #44,#30,#04,#44,#30,#04,#44,#30
db #04,#44,#30,#04,#44,#30,#04,#44
db #30,#04,#44,#30,#04,#44,#30,#04
db #44,#30,#04,#44,#30,#04,#44,#30
db #04,#44,#30,#03,#ff,#00,#01,#44
db #30,#04,#44,#30,#04,#44,#30,#04
db #44,#30,#04,#44,#30,#04,#44,#30
db #04,#44,#30,#04,#44,#30,#04,#44
db #30,#04,#44,#30,#04,#44,#30,#04
db #44,#30,#04,#44,#30,#04,#44,#30
db #04,#44,#30,#04,#44,#30,#03,#ff
db #44,#50,#04,#44,#50,#04,#44,#50
db #04,#44,#50,#04,#44,#50,#04,#44
db #50,#04,#44,#50,#04,#44,#50,#04
db #44,#50,#04,#44,#50,#04,#44,#50
db #04,#44,#50,#04,#44,#50,#04,#44
db #50,#04,#44,#50,#04,#44,#50,#04
db #ff,#00,#19,#39,#d0,#20,#34,#d0
db #07,#ff,#44,#a0,#02,#c4,#a0,#3b
db #a0,#02,#44,#a0,#02,#c2,#a0,#3b
db #a0,#03,#42,#a0,#02,#44,#a0,#02
db #42,#a0,#02,#44,#a0,#02,#42,#a0
db #02,#44,#a0,#02,#42,#a0,#04,#3b
db #a0,#05,#3b,#a0,#04,#c4,#a0,#42
db #a0,#03,#44,#a0,#02,#42,#a0,#02
db #3d,#a0,#04,#3d,#a0,#04,#3d,#a0
db #05,#44,#a0,#02,#42,#a0,#02,#44
db #a0,#02,#c2,#a0,#ff,#00,#01,#44
db #50,#04,#42,#50,#04,#44,#50,#04
db #42,#50,#04,#44,#50,#04,#42,#50
db #04,#44,#50,#04,#42,#50,#04,#44
db #50,#04,#42,#50,#04,#44,#50,#04
db #42,#50,#04,#44,#50,#04,#42,#50
db #04,#44,#50,#04,#42,#50,#03,#ff
db #44,#20,#02,#3f,#20,#02,#40,#20
db #02,#42,#20,#02,#44,#20,#02,#3f
db #20,#02,#40,#20,#02,#42,#20,#02
db #44,#20,#02,#3f,#20,#02,#40,#20
db #02,#42,#20,#02,#44,#20,#02,#3f
db #20,#02,#40,#20,#02,#42,#20,#02
db #44,#20,#02,#3f,#20,#02,#40,#20
db #02,#42,#20,#02,#44,#20,#02,#3f
db #20,#02,#40,#20,#02,#42,#20,#02
db #44,#20,#02,#3f,#20,#02,#40,#20
db #02,#42,#20,#02,#44,#20,#02,#3f
db #20,#02,#40,#20,#02,#42,#20,#02
db #ff,#00,#01,#44,#b0,#02,#3f,#b0
db #02,#40,#b0,#02,#42,#b0,#02,#44
db #b0,#02,#3f,#b0,#02,#40,#b0,#02
db #42,#b0,#02,#44,#b0,#02,#3f,#b0
db #02,#40,#b0,#02,#42,#b0,#02,#44
db #b0,#02,#3f,#b0,#02,#40,#b0,#02
db #42,#b0,#02,#44,#b0,#02,#3f,#b0
db #02,#40,#b0,#02,#42,#b0,#02,#44
db #b0,#02,#3f,#b0,#02,#40,#b0,#02
db #42,#b0,#02,#44,#b0,#02,#3f,#b0
db #02,#40,#b0,#02,#42,#b0,#02,#44
db #b0,#02,#3f,#b0,#02,#40,#b0,#02
db #c2,#b0,#ff
nop
jp l7154	; Xiestra
jp l71e8
jp l71cc
.l7154
xor a
ld hl,l76ff
call l71c5
ld hl,l772d
call l71c5
ld hl,l775b
call l71c5
ld ix,l76fb
ld iy,l7785
ld de,#002e
ld b,#03
.l7174
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l7174
ld hl,l7614
ld (hl),#02
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l7610),hl
ld (l7612),hl
ld a,#0c
ld c,d
call l75f0
ld a,#0d
ld c,d
jp l75f0
.l71c5
ld b,#2a
.l71c7
ld (hl),a
inc hl
djnz l71c7
ret
.l71cc
ld a,#07
ld c,#3f
call l75f0
ld a,#08
ld c,#00
call l75f0
ld a,#09
ld c,#00
call l75f0
ld a,#0a
ld c,#00
jp l75f0
.l71e8
ld hl,l7616
dec (hl)
ld ix,l76fb
ld bc,l7709
call l728a
ld ix,l7729
ld bc,l7737
call l728a
ld ix,l7757
ld bc,l7765
call l728a
ld hl,l760f
ld de,l7616
ld b,#06
call l7267
ld b,#07
call l7267
ld b,#0b
call l7267
ld b,#0d
call l7267
ld de,l7616
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l771a
call l7240
ld hl,l7748
call l7240
ld hl,l7776
.l7240
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l7255
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l7255
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l7267
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l75f0
.l7272
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l75f0
.l728a
ld a,(l7616)
or a
jp nz,l7342
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l7342
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l7272
or a
jp z,l7337
ld r,a
and #7f
cp #10
jr c,l7312
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l748a
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l72eb
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l72eb
rrca
ld c,a
ld hl,l778b
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l730a
ld (ix+#1e),b
.l730a
ld a,i
pop hl
ld d,b
and #0f
jr z,l732b
.l7312
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l761b
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l732b
ld a,d
or a
jr nz,l7339
ld a,r
bit 7,a
ld a,#01
jr nz,l7339
.l7337
ld a,(hl)
inc hl
.l7339
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l7342
ld a,(ix+#17)
or a
jr nz,l7358
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l7358
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l736e
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l736e
ld a,(ix+#0d)
or a
jr z,l737c
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l739a
.l737c
ld a,(ix+#1a)
or a
jp z,l73a1
ld c,a
cp #03
jr nz,l7389
xor a
.l7389
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l739a
ld a,(ix+#18)
dec c
jr z,l739a
ld a,(ix+#19)
.l739a
add (ix+#07)
ld b,d
call l748a
.l73a1
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l73c9
dec (ix+#1b)
jr nz,l73c9
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l7401
.l73c9
ld a,(ix+#29)
or a
jr z,l7401
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l73f8
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l73ef
ld (ix+#29),#ff
jr l73f8
.l73ef
cp (ix+#2b)
jr nz,l73f8
ld (ix+#29),#01
.l73f8
ld b,d
or a
jp p,l73fe
dec b
.l73fe
ld c,a
jr l740c
.l7401
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l740c
pop hl
bit 7,(ix+#14)
jr z,l7415
ld h,d
ld l,d
.l7415
add hl,bc
ld c,l
ld a,(ix+#01)
call l75f0
ld c,h
ld a,(ix+#02)
call l75f0
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l7468
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l7457
dec (ix+#09)
jr nz,l7457
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l744f
xor a
jr l7454
.l744f
cp #10
jr nz,l7454
dec a
.l7454
ld (ix+#1e),a
.l7457
ld a,b
sub (ix+#1e)
jr nc,l745e
xor a
.l745e
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l75f0
.l7468
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l7617)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l7486
ld l,a
ld a,b
cpl
and h
ld h,a
.l7486
ld (l7617),hl
ret
.l748a
ld hl,l7639
cp #61
jr nc,l7494
add a
ld c,a
add hl,bc
.l7494
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l749e
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l75c3
ld (ix+#1e),a
jp l732b
.l74b0
dec b
.l74b1
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l74bc
neg
.l74bc
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l732b
.l74d2
dec b
jr l74d6
.l74d5
inc b
.l74d6
call l75c3
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l732b
.l74e5
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l75a8
.l74f6
ld a,(hl)
inc hl
or a
jr z,l7518
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l7518
ld (ix+#29),a
jp l732b
.l751e
dec hl
ld a,(hl)
and #0f
ld (l761a),a
inc hl
ld a,(hl)
inc hl
ld (l7619),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l732b
.l7538
ld a,(hl)
or a
jr z,l7549
call l75c5
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l732b
.l7549
ld hl,#0101
ld (l7615),hl
jp l732b
.l7552
call l75c3
ld (ix+#1e),a
jp l732b
.l755b
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l75d4
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l75d4
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l732b
.l757d
ld a,(hl)
inc hl
ld (l7614),a
jp l732b
.l7585
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l732b
.l75a4
call l75c3
add a
.l75a8
ld b,#00
ld c,a
push hl
ld hl,l780b
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l732b
.l75c3
ld a,(hl)
inc hl
.l75c5
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l75d4
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l778b
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l75f0
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l760f
ret
.l7617 equ $ + 7
.l7616 equ $ + 6
.l7615 equ $ + 5
.l7614 equ $ + 4
.l7612 equ $ + 2
.l7610
db #00,#00,#00,#00,#00,#00,#00,#00
.l761a equ $ + 2
.l7619 equ $ + 1
db #38,#00,#00
.l761b
dw l749e,l74b1,l74b0,l74d5
dw l74d2,l74e5,l74f6,l751e
dw l7538,l751e,l7552,l755b
dw l757d,l7585,l75a4
.l7639
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l76ff equ $ + 4
.l76fb
db #08,#00,#01,#08,#00,#00,#00,#00
.l7709 equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l771a equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7729 equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l772d equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l7737 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7748 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7757 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l775b
db #00,#00,#00,#00,#00,#00,#00,#00
.l7765 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7776 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7785 equ $ + 2
db #00,#00,#eb,#7a,#21,#7b,#57,#7b
.l778b
db #2b,#78,#6b,#78,#8b,#78,#c0,#00
db #4f,#7a,#04,#9e,#44,#9e,#07,#6c
db #ab,#78,#eb,#78,#0b,#79,#00,#00
db #2b,#79,#6b,#79,#8b,#79,#80,#00
db #ab,#79,#eb,#79,#0b,#79,#08,#18
db #1d,#31,#c4,#9c,#a4,#9e,#07,#6c
db #1d,#31,#4f,#7a,#4f,#7a,#32,#49
db #0b,#7a,#4b,#7a,#0b,#79,#48,#08
db #6b,#7a,#ab,#7a,#0b,#79,#40,#00
db #ab,#78,#cb,#7a,#0b,#79,#00,#00
db #1d,#31,#b6,#55,#b6,#55,#99,#24
db #b6,#55,#b6,#55,#b6,#55,#99,#24
db #b6,#55,#b6,#55,#b6,#55,#99,#24
db #b6,#55,#b6,#55,#b6,#55,#99,#24
db #b6,#55,#1d,#31,#1d,#31,#00,#00
db #1d,#31,#1d,#31,#1d,#31,#00,#00
.l780b
db #1d,#31,#1d,#31,#1d,#31,#1d,#31
db #1d,#31,#1d,#31,#1d,#31,#1d,#31
db #1d,#31,#1d,#31,#1d,#31,#1d,#31
db #1d,#31,#1d,#31,#1d,#31,#1d,#31
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
db #09,#08,#08,#08,#08,#08,#08,#08
db #08,#08,#08,#08,#07,#06,#05,#04
db #03,#02,#01,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
db #09,#09,#09,#08,#08,#07,#07,#06
db #05,#04,#03,#02,#01,#00,#00,#00
db #00,#8d,#7b,#00,#8d,#7b,#00,#8d
db #7b,#00,#0e,#7c,#00,#0e,#7c,#00
db #0e,#7c,#00,#0e,#7c,#00,#8f,#7c
db #00,#8f,#7c,#00,#8f,#7c,#00,#8f
db #7c,#00,#10,#7d,#00,#10,#7d,#00
db #10,#7d,#00,#91,#7d,#00,#91,#7d
db #00,#91,#7d,#80,#eb,#7a,#00,#9e
db #7d,#00,#9e,#7d,#00,#9e,#7d,#00
db #a1,#7d,#00,#a1,#7d,#00,#a1,#7d
db #00,#a1,#7d,#00,#9e,#7d,#00,#9e
db #7d,#00,#9e,#7d,#00,#9e,#7d,#00
db #02,#7e,#00,#02,#7e,#00,#02,#7e
db #00,#06,#7e,#00,#06,#7e,#00,#06
db #7e,#80,#21,#7b,#00,#9e,#7d,#00
db #9e,#7d,#00,#9e,#7d,#00,#84,#7e
db #00,#84,#7e,#00,#84,#7e,#00,#84
db #7e,#00,#9e,#7d,#00,#9e,#7d,#00
db #9e,#7d,#00,#9e,#7d,#00,#e6,#7e
db #00,#e6,#7e,#00,#e6,#7e,#00,#ea
db #7e,#00,#ea,#7e,#00,#ea,#7e,#80
db #57,#7b,#cc,#20,#c1,#20,#c4,#20
db #da,#20,#dc,#20,#d8,#20,#cc,#20
db #c1,#20,#c4,#20,#da,#20,#dc,#20
db #d8,#20,#cc,#20,#c1,#20,#c4,#20
db #da,#20,#dc,#20,#d8,#20,#cc,#20
db #c1,#20,#c4,#20,#da,#20,#dc,#20
db #d8,#20,#cc,#20,#c1,#20,#c4,#20
db #da,#20,#dc,#20,#d8,#20,#cc,#20
db #c1,#20,#c4,#20,#da,#20,#dc,#20
db #d8,#20,#cc,#20,#c1,#20,#c4,#20
db #da,#20,#dc,#20,#d8,#20,#cc,#20
db #c1,#20,#c4,#20,#da,#20,#dc,#20
db #d8,#20,#cc,#20,#c1,#20,#c4,#20
db #da,#20,#dc,#20,#d8,#20,#cc,#20
db #c1,#20,#c4,#20,#da,#20,#dc,#20
db #d8,#20,#cc,#20,#c1,#20,#c4,#20
db #dc,#20,#ff,#cc,#20,#ce,#20,#d0
db #20,#d1,#20,#d3,#20,#d5,#20,#cc
db #20,#ce,#20,#d0,#20,#d1,#20,#d3
db #20,#d5,#20,#cc,#20,#ce,#20,#d0
db #20,#d1,#20,#d3,#20,#d5,#20,#da
db #20,#da,#20,#dc,#20,#dc,#20,#dc
db #20,#da,#20,#da,#20,#da,#20,#cc
db #20,#ce,#20,#d0,#20,#d1,#20,#d3
db #20,#d5,#20,#cc,#20,#ce,#20,#d0
db #20,#d1,#20,#d3,#20,#d5,#20,#cc
db #20,#ce,#20,#d0,#20,#d1,#20,#d3
db #20,#d5,#20,#da,#20,#da,#20,#dc
db #20,#da,#20,#dc,#20,#da,#20,#dc
db #20,#da,#20,#d8,#20,#d8,#20,#cc
db #20,#ce,#20,#d0,#20,#d1,#20,#d3
db #20,#d5,#20,#cc,#20,#ce,#20,#d0
db #20,#d1,#20,#ff,#cc,#90,#c1,#90
db #c4,#90,#cc,#90,#c1,#90,#c4,#90
db #cc,#90,#c1,#90,#c4,#90,#da,#90
db #dc,#90,#d8,#90,#cc,#90,#c1,#90
db #c4,#90,#cc,#90,#c1,#90,#c4,#90
db #cc,#90,#c1,#90,#c4,#90,#da,#90
db #dc,#90,#d8,#90,#cc,#90,#c1,#90
db #c4,#90,#cc,#90,#c1,#90,#c4,#90
db #cc,#90,#c1,#90,#c4,#90,#da,#90
db #dc,#90,#d8,#90,#cc,#90,#c1,#90
db #c4,#90,#cc,#90,#c1,#90,#c4,#90
db #cc,#90,#c2,#90,#c4,#90,#da,#90
db #dc,#90,#da,#90,#cc,#90,#c1,#90
db #c4,#90,#cc,#90,#c1,#90,#c4,#90
db #cc,#90,#c1,#90,#c4,#90,#da,#90
db #dc,#90,#d8,#90,#cc,#90,#c1,#90
db #c4,#90,#cc,#90,#ff,#da,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#da,#90,#da
db #90,#da,#90,#da,#90,#da,#90,#da
db #90,#da,#90,#da,#90,#d8,#90,#d8
db #90,#da,#90,#d8,#90,#d8,#90,#d8
db #90,#d8,#90,#d8,#90,#d8,#90,#d8
db #90,#da,#90,#da,#90,#da,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#da,#90,#d8,#90,#da
db #90,#d8,#90,#d0,#90,#ff,#51,#70
db #07,#55,#70,#0c,#57,#70,#21,#58
db #70,#0c,#ff,#00,#40,#ff,#5a,#30
db #02,#5a,#30,#02,#5a,#30,#02,#5a
db #30,#02,#5a,#30,#02,#5a,#30,#02
db #5a,#30,#02,#5a,#30,#02,#5a,#30
db #02,#5a,#30,#02,#5a,#30,#02,#5a
db #30,#02,#5a,#30,#02,#5a,#30,#02
db #5a,#30,#02,#5a,#30,#02,#5a,#30
db #02,#5a,#30,#02,#5a,#30,#02,#5a
db #30,#02,#5a,#30,#02,#5a,#30,#02
db #5a,#30,#02,#5a,#30,#02,#5a,#30
db #02,#5a,#30,#02,#5a,#30,#02,#5a
db #30,#02,#5a,#30,#02,#5a,#30,#02
db #5a,#30,#02,#5a,#30,#02,#ff,#5c
db #40,#40,#ff,#00,#01,#d0,#80,#dc
db #80,#d8,#80,#da,#80,#d8,#80,#5a
db #80,#02,#d1,#80,#d0,#80,#d0,#80
db #d1,#80,#d0,#80,#ce,#80,#d1,#80
db #d0,#80,#ce,#80,#d1,#80,#51,#80
db #02,#d3,#80,#d1,#80,#d1,#80,#d3
db #80,#d0,#80,#ce,#80,#da,#80,#d8
db #80,#d1,#80,#d3,#80,#d0,#80,#ce
db #80,#ca,#80,#d8,#80,#da,#80,#d1
db #80,#d3,#80,#d0,#80,#ce,#80,#ca
db #80,#d8,#80,#da,#80,#d1,#80,#d3
db #80,#d0,#80,#ce,#80,#ca,#80,#d8
db #80,#da,#80,#d1,#80,#d3,#80,#50
db #80,#02,#ca,#80,#d1,#80,#d1,#80
db #d0,#80,#d0,#80,#d3,#80,#ce,#80
db #d1,#80,#d0,#80,#cc,#80,#ce,#80
db #ff,#00,#01,#51,#40,#02,#58,#40
db #02,#5a,#40,#02,#5a,#40,#02,#58
db #40,#02,#53,#40,#02,#53,#40,#02
db #5a,#40,#02,#5a,#40,#02,#55,#40
db #02,#57,#40,#02,#57,#40,#02,#5a
db #40,#02,#5a,#40,#02,#5a,#40,#02
db #55,#40,#02,#55,#40,#02,#55,#40
db #02,#5a,#40,#02,#58,#40,#02,#58
db #40,#02,#58,#40,#02,#5a,#40,#02
db #53,#40,#02,#5a,#40,#02,#5a,#40
db #02,#58,#40,#02,#53,#40,#02,#53
db #40,#02,#5a,#40,#02,#58,#40,#02
db #da,#40,#ff,#4c,#70,#40,#ff,#d1
db #00,#d8,#00,#d3,#00,#d1,#00,#da
db #00,#d8,#00,#da,#00,#d8,#00,#da
db #00,#d8,#00,#da,#00,#d8,#00,#d0
db #00,#ce,#00,#dc,#00,#da,#00,#ce
db #00,#d8,#00,#d3,#00,#da,#00,#d1
db #00,#dc,#00,#d8,#00,#d1,#00,#d3
db #00,#d0,#00,#ce,#00,#d1,#00,#d3
db #00,#d0,#00,#ce,#00,#d1,#00,#d3
db #00,#d0,#00,#ce,#00,#d1,#00,#d3
db #00,#d0,#00,#ce,#00,#dc,#00,#d3
db #00,#d0,#00,#da,#00,#d1,#00,#d0
db #00,#d8,#00,#d3,#00,#ce,#00,#dc
db #00,#da,#00,#d1,#00,#d0,#00,#d8
db #00,#d3,#00,#ce,#00,#dc,#00,#d8
db #00,#d1,#00,#d3,#00,#d0,#00,#d8
db #00,#d1,#00,#da,#00,#da,#00,#ff


org #4000
jp l4009	; Art of Skata
jp l409d
jp l4081
.l4009
xor a
ld hl,l45b4
call l407a
ld hl,l45e2
call l407a
ld hl,l4610
call l407a
ld ix,l45b0
ld iy,l463a
ld de,#002e
ld b,#03
.l4029
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l4029
ld hl,l44c9
ld (hl),#04
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l44c5),hl
ld (l44c7),hl
ld a,#0c
ld c,d
call l44a5
ld a,#0d
ld c,d
jp l44a5
.l407a
ld b,#2a
.l407c
ld (hl),a
inc hl
djnz l407c
ret
.l4081
ld a,#07
ld c,#3f
call l44a5
ld a,#08
ld c,#00
call l44a5
ld a,#09
ld c,#00
call l44a5
ld a,#0a
ld c,#00
jp l44a5
.l409d
ld hl,l44cb
dec (hl)
ld ix,l45b0
ld bc,l45be
call l413f
ld ix,l45de
ld bc,l45ec
call l413f
ld ix,l460c
ld bc,l461a
call l413f
ld hl,l44c4
ld de,l44cb
ld b,#06
call l411c
ld b,#07
call l411c
ld b,#0b
call l411c
ld b,#0d
call l411c
ld de,l44cb
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l45cf
call l40f5
ld hl,l45fd
call l40f5
ld hl,l462b
.l40f5
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l410a
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l410a
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l411c
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l44a5
.l4127
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l44a5
.l413f
ld a,(l44cb)
or a
jp nz,l41f7
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l41f7
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l4127
or a
jp z,l41ec
ld r,a
and #7f
cp #10
jr c,l41c7
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l433f
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l41a0
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l41a0
rrca
ld c,a
ld hl,l4640
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l41bf
ld (ix+#1e),b
.l41bf
ld a,i
pop hl
ld d,b
and #0f
jr z,l41e0
.l41c7
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l44d0
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l41e0
ld a,d
or a
jr nz,l41ee
ld a,r
bit 7,a
ld a,#01
jr nz,l41ee
.l41ec
ld a,(hl)
inc hl
.l41ee
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l41f7
ld a,(ix+#17)
or a
jr nz,l420d
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l420d
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l4223
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l4223
ld a,(ix+#0d)
or a
jr z,l4231
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l424f
.l4231
ld a,(ix+#1a)
or a
jp z,l4256
ld c,a
cp #03
jr nz,l423e
xor a
.l423e
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l424f
ld a,(ix+#18)
dec c
jr z,l424f
ld a,(ix+#19)
.l424f
add (ix+#07)
ld b,d
call l433f
.l4256
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l427e
dec (ix+#1b)
jr nz,l427e
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l42b6
.l427e
ld a,(ix+#29)
or a
jr z,l42b6
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l42ad
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l42a4
ld (ix+#29),#ff
jr l42ad
.l42a4
cp (ix+#2b)
jr nz,l42ad
ld (ix+#29),#01
.l42ad
ld b,d
or a
jp p,l42b3
dec b
.l42b3
ld c,a
jr l42c1
.l42b6
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l42c1
pop hl
bit 7,(ix+#14)
jr z,l42ca
ld h,d
ld l,d
.l42ca
add hl,bc
ld c,l
ld a,(ix+#01)
call l44a5
ld c,h
ld a,(ix+#02)
call l44a5
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l431d
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l430c
dec (ix+#09)
jr nz,l430c
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l4304
xor a
jr l4309
.l4304
cp #10
jr nz,l4309
dec a
.l4309
ld (ix+#1e),a
.l430c
ld a,b
sub (ix+#1e)
jr nc,l4313
xor a
.l4313
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l44a5
.l431d
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l44cc)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l433b
ld l,a
ld a,b
cpl
and h
ld h,a
.l433b
ld (l44cc),hl
ret
.l433f
ld hl,l44ee
cp #61
jr nc,l4349
add a
ld c,a
add hl,bc
.l4349
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l4353
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l4478
ld (ix+#1e),a
jp l41e0
.l4365
dec b
.l4366
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l4371
neg
.l4371
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l41e0
.l4387
dec b
jr l438b
.l438a
inc b
.l438b
call l4478
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l41e0
.l439a
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l445d
.l43ab
ld a,(hl)
inc hl
or a
jr z,l43cd
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l43cd
ld (ix+#29),a
jp l41e0
.l43d3
dec hl
ld a,(hl)
and #0f
ld (l44cf),a
inc hl
ld a,(hl)
inc hl
ld (l44ce),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l41e0
.l43ed
ld a,(hl)
or a
jr z,l43fe
call l447a
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l41e0
.l43fe
ld hl,#0101
ld (l44ca),hl
jp l41e0
.l4407
call l4478
ld (ix+#1e),a
jp l41e0
.l4410
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l4489
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l4489
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l41e0
.l4432
ld a,(hl)
inc hl
ld (l44c9),a
jp l41e0
.l443a
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l41e0
.l4459
call l4478
add a
.l445d
ld b,#00
ld c,a
push hl
ld hl,l46c0
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l41e0
.l4478
ld a,(hl)
inc hl
.l447a
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l4489
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l4640
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l44a5
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l44c4
ret
.l44cc equ $ + 7
.l44cb equ $ + 6
.l44ca equ $ + 5
.l44c9 equ $ + 4
.l44c7 equ $ + 2
.l44c5
db #00,#00,#00,#00,#00,#00,#00,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
db #38,#00,#00
.l44d0
dw l4353,l4366,l4365,l438a
dw l4387,l439a,l43ab,l43d3
dw l43ed,l43d3,l4407,l4410
dw l4432,l443a,l4459
.l44ee
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l45b4 equ $ + 4
.l45b0
db #08,#00,#01,#08,#00,#00,#00,#00
.l45be equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l45e2 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l4610
db #00,#00,#00,#00,#00,#00,#00,#00
.l461a equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
db #00,#00,#60,#49,#8a,#49,#b4,#49
.l4640
db #e0,#46,#20,#47,#40,#47,#c0,#00
db #60,#47,#a0,#47,#c0,#47,#1a,#06
db #e0,#47,#20,#48,#40,#48,#00,#00
db #60,#48,#a0,#48,#c0,#48,#80,#00
db #af,#24,#b1,#32,#8e,#57,#bc,#57
db #e0,#47,#e0,#48,#00,#49,#9a,#06
db #e0,#47,#20,#48,#20,#49,#00,#00
db #af,#24,#8e,#57,#8e,#57,#bc,#57
db #af,#24,#8e,#57,#b1,#32,#df,#32
db #d2,#ff,#b1,#32,#b1,#32,#df,#32
db #d2,#ff,#b1,#32,#b1,#32,#df,#32
db #b1,#32,#b1,#32,#b1,#32,#df,#32
db #b1,#32,#b1,#32,#b1,#32,#df,#32
db #b1,#32,#b1,#32,#b1,#32,#df,#32
db #b1,#32,#d2,#ff,#d2,#ff,#00,#00
db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
.l46c0
db #40,#49,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#01,#00
db #01,#00,#01,#00,#ff,#ff,#ff,#ff
db #00,#00,#00,#00,#01,#00,#01,#00
db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #07,#02,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0b,#09,#07,#05,#03,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#01,#01,#01,#01,#01,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#de,#49,#00,#de,#49,#00,#de
db #49,#00,#de,#49,#00,#de,#49,#00
db #de,#49,#00,#de,#49,#00,#de,#49
db #00,#de,#49,#00,#de,#49,#00,#de
db #49,#00,#de,#49,#00,#de,#49,#80
db #60,#49,#00,#3f,#4a,#00,#42,#4a
db #00,#42,#4a,#00,#3f,#4a,#00,#42
db #4a,#00,#73,#4a,#00,#42,#4a,#00
db #42,#4a,#00,#42,#4a,#00,#42,#4a
db #00,#d4,#4a,#00,#d4,#4a,#00,#42
db #4a,#80,#8a,#49,#00,#3f,#4a,#00
db #3f,#4a,#00,#3f,#4a,#00,#3f,#4a
db #00,#3f,#4a,#00,#05,#4b,#00,#4e
db #4b,#00,#3f,#4a,#00,#4e,#4b,#00
db #81,#4b,#00,#c4,#4b,#00,#c4,#4b
db #00,#3f,#4a,#80,#b4,#49,#14,#20
db #02,#12,#20,#02,#10,#20,#02,#1b
db #20,#02,#14,#20,#02,#12,#20,#02
db #10,#20,#02,#1b,#20,#02,#14,#20
db #02,#12,#20,#02,#10,#20,#02,#1b
db #20,#02,#14,#20,#02,#12,#20,#02
db #10,#20,#02,#1b,#20,#02,#14,#20
db #02,#12,#20,#02,#10,#20,#02,#1b
db #20,#02,#14,#20,#02,#12,#20,#02
db #10,#20,#02,#1b,#20,#02,#14,#20
db #02,#12,#20,#02,#10,#20,#02,#1b
db #20,#02,#14,#20,#02,#12,#20,#02
db #10,#20,#02,#1b,#20,#02,#ff,#00
db #40,#ff,#44,#50,#04,#44,#50,#04
db #44,#50,#04,#44,#50,#04,#44,#50
db #04,#44,#50,#04,#44,#50,#04,#44
db #50,#04,#44,#50,#04,#44,#50,#04
db #44,#50,#04,#44,#50,#04,#44,#50
db #04,#44,#50,#04,#44,#50,#04,#44
db #50,#04,#ff,#44,#56,#0f,#02,#01
db #20,#44,#56,#0f,#02,#01,#20,#44
db #56,#0f,#02,#01,#20,#44,#56,#0f
db #02,#01,#20,#44,#56,#0f,#02,#01
db #20,#44,#56,#0f,#02,#01,#20,#44
db #56,#0f,#02,#01,#20,#44,#56,#0f
db #02,#01,#20,#44,#56,#0f,#02,#01
db #20,#44,#56,#0f,#02,#01,#20,#44
db #56,#0f,#02,#01,#20,#44,#56,#0f
db #02,#01,#20,#44,#56,#0f,#02,#01
db #20,#44,#56,#0f,#02,#01,#20,#44
db #56,#0f,#02,#01,#20,#44,#56,#0f
db #02,#01,#20,#ff,#29,#60,#04,#29
db #60,#04,#3b,#60,#04,#3d,#60,#04
db #29,#60,#04,#29,#60,#04,#3b,#60
db #04,#3d,#60,#04,#29,#60,#04,#29
db #60,#04,#3b,#60,#04,#3d,#60,#04
db #29,#60,#04,#29,#60,#04,#3b,#60
db #04,#3d,#60,#04,#ff,#44,#30,#02
db #34,#00,#02,#2b,#50,#04,#44,#30
db #02,#34,#00,#02,#2b,#50,#04,#44
db #30,#02,#34,#00,#02,#2b,#50,#04
db #44,#30,#02,#34,#00,#02,#29,#50
db #04,#44,#30,#02,#34,#00,#02,#29
db #50,#04,#44,#30,#02,#34,#00,#02
db #29,#50,#04,#44,#30,#02,#34,#00
db #02,#29,#50,#04,#44,#30,#02,#34
db #00,#02,#29,#50,#04,#ff,#00,#02
db #11,#60,#04,#13,#60,#04,#11,#60
db #04,#13,#60,#04,#11,#60,#04,#13
db #60,#04,#11,#60,#04,#13,#60,#04
db #11,#60,#04,#13,#60,#04,#11,#60
db #04,#13,#60,#04,#11,#60,#04,#13
db #60,#04,#11,#60,#04,#13,#60,#02
db #ff,#00,#02,#a9,#10,#fe,#03,#ab
db #10,#fe,#03,#a9,#10,#fe,#03,#ab
db #10,#fe,#03,#a9,#10,#fe,#03,#ab
db #10,#fe,#03,#a9,#10,#fe,#03,#ab
db #10,#fe,#03,#a9,#10,#fe,#03,#ab
db #10,#fe,#03,#a9,#10,#fe,#03,#ab
db #10,#fe,#03,#a9,#10,#fe,#03,#ab
db #10,#fe,#03,#a9,#10,#fe,#03,#ab
db #10,#fe,#01,#ff,#00,#02,#29,#50
db #04,#29,#50,#04,#29,#50,#04,#29
db #50,#04,#29,#50,#04,#29,#50,#04
db #29,#50,#04,#29,#50,#04,#29,#50
db #04,#29,#50,#04,#29,#50,#04,#29
db #50,#04,#29,#50,#04,#29,#50,#04
db #29,#50,#04,#29,#50,#02,#ff
nop
jp l4c01	; Savourex
jp l4c95
jp l4c79
.l4c01
xor a
ld hl,l51ac
call l4c72
ld hl,l51da
call l4c72
ld hl,l5208
call l4c72
ld ix,l51a8
ld iy,l5232
ld de,#002e
ld b,#03
.l4c21
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l4c21
ld hl,l50c1
ld (hl),#02
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l50bd),hl
ld (l50bf),hl
ld a,#0c
ld c,d
call l509d
ld a,#0d
ld c,d
jp l509d
.l4c72
ld b,#2a
.l4c74
ld (hl),a
inc hl
djnz l4c74
ret
.l4c79
ld a,#07
ld c,#3f
call l509d
ld a,#08
ld c,#00
call l509d
ld a,#09
ld c,#00
call l509d
ld a,#0a
ld c,#00
jp l509d
.l4c95
ld hl,l50c3
dec (hl)
ld ix,l51a8
ld bc,l51b6
call l4d37
ld ix,l51d6
ld bc,l51e4
call l4d37
ld ix,l5204
ld bc,l5212
call l4d37
ld hl,l50bc
ld de,l50c3
ld b,#06
call l4d14
ld b,#07
call l4d14
ld b,#0b
call l4d14
ld b,#0d
call l4d14
ld de,l50c3
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l51c7
call l4ced
ld hl,l51f5
call l4ced
ld hl,l5223
.l4ced
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l4d02
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l4d02
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l4d14
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l509d
.l4d1f
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l509d
.l4d37
ld a,(l50c3)
or a
jp nz,l4def
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l4def
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l4d1f
or a
jp z,l4de4
ld r,a
and #7f
cp #10
jr c,l4dbf
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l4f37
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l4d98
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l4d98
rrca
ld c,a
ld hl,l5238
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l4db7
ld (ix+#1e),b
.l4db7
ld a,i
pop hl
ld d,b
and #0f
jr z,l4dd8
.l4dbf
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l50c8
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l4dd8
ld a,d
or a
jr nz,l4de6
ld a,r
bit 7,a
ld a,#01
jr nz,l4de6
.l4de4
ld a,(hl)
inc hl
.l4de6
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l4def
ld a,(ix+#17)
or a
jr nz,l4e05
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l4e05
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l4e1b
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l4e1b
ld a,(ix+#0d)
or a
jr z,l4e29
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l4e47
.l4e29
ld a,(ix+#1a)
or a
jp z,l4e4e
ld c,a
cp #03
jr nz,l4e36
xor a
.l4e36
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l4e47
ld a,(ix+#18)
dec c
jr z,l4e47
ld a,(ix+#19)
.l4e47
add (ix+#07)
ld b,d
call l4f37
.l4e4e
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l4e76
dec (ix+#1b)
jr nz,l4e76
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l4eae
.l4e76
ld a,(ix+#29)
or a
jr z,l4eae
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l4ea5
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l4e9c
ld (ix+#29),#ff
jr l4ea5
.l4e9c
cp (ix+#2b)
jr nz,l4ea5
ld (ix+#29),#01
.l4ea5
ld b,d
or a
jp p,l4eab
dec b
.l4eab
ld c,a
jr l4eb9
.l4eae
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l4eb9
pop hl
bit 7,(ix+#14)
jr z,l4ec2
ld h,d
ld l,d
.l4ec2
add hl,bc
ld c,l
ld a,(ix+#01)
call l509d
ld c,h
ld a,(ix+#02)
call l509d
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l4f15
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l4f04
dec (ix+#09)
jr nz,l4f04
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l4efc
xor a
jr l4f01
.l4efc
cp #10
jr nz,l4f01
dec a
.l4f01
ld (ix+#1e),a
.l4f04
ld a,b
sub (ix+#1e)
jr nc,l4f0b
xor a
.l4f0b
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l509d
.l4f15
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l50c4)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l4f33
ld l,a
ld a,b
cpl
and h
ld h,a
.l4f33
ld (l50c4),hl
ret
.l4f37
ld hl,l50e6
cp #61
jr nc,l4f41
add a
ld c,a
add hl,bc
.l4f41
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l4f4b
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l5070
ld (ix+#1e),a
jp l4dd8
.l4f5d
dec b
.l4f5e
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l4f69
neg
.l4f69
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l4dd8
.l4f7f
dec b
jr l4f83
.l4f82
inc b
.l4f83
call l5070
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l4dd8
.l4f92
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l5055
.l4fa3
ld a,(hl)
inc hl
or a
jr z,l4fc5
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l4fc5
ld (ix+#29),a
jp l4dd8
.l4fcb
dec hl
ld a,(hl)
and #0f
ld (l50c7),a
inc hl
ld a,(hl)
inc hl
ld (l50c6),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l4dd8
.l4fe5
ld a,(hl)
or a
jr z,l4ff6
call l5072
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l4dd8
.l4ff6
ld hl,#0101
ld (l50c2),hl
jp l4dd8
.l4fff
call l5070
ld (ix+#1e),a
jp l4dd8
.l5008
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l5081
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l5081
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l4dd8
.l502a
ld a,(hl)
inc hl
ld (l50c1),a
jp l4dd8
.l5032
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l4dd8
.l5051
call l5070
add a
.l5055
ld b,#00
ld c,a
push hl
ld hl,l52b8
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l4dd8
.l5070
ld a,(hl)
inc hl
.l5072
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l5081
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l5238
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l509d
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l50bc
ret
.l50c4 equ $ + 7
.l50c3 equ $ + 6
.l50c2 equ $ + 5
.l50c1 equ $ + 4
.l50bf equ $ + 2
.l50bd
db #00,#00,#00,#00,#00,#00,#00,#00
.l50c7 equ $ + 2
.l50c6 equ $ + 1
db #38,#00,#00
.l50c8
dw l4f4b,l4f5e,l4f5d,l4f82
dw l4f7f,l4f92,l4fa3,l4fcb
dw l4fe5,l4fcb,l4fff,l5008
dw l502a,l5032,l5051
.l50e6
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l51ac equ $ + 4
.l51a8
db #08,#00,#01,#08,#00,#00,#00,#00
.l51b6 equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l51c7 equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l51d6 equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l51da equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l51e4 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l51f5 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5204 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l5208
db #00,#00,#00,#00,#00,#00,#00,#00
.l5212 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5223 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5232 equ $ + 2
db #00,#00,#58,#57,#b2,#57,#0c,#58
.l5238
db #d8,#52,#18,#53,#38,#53,#20,#00
db #af,#f1,#af,#f1,#af,#f1,#e5,#e5
db #58,#53,#98,#53,#38,#53,#00,#00
db #d8,#52,#b8,#53,#38,#53,#20,#00
db #d8,#52,#d8,#53,#38,#53,#20,#00
db #d8,#52,#f8,#53,#18,#54,#00,#00
db #38,#54,#78,#54,#98,#54,#00,#00
db #b8,#54,#f8,#54,#38,#53,#00,#00
db #18,#55,#58,#55,#78,#55,#00,#00
db #98,#55,#d8,#55,#f8,#55,#80,#00
db #18,#56,#58,#56,#78,#56,#c0,#00
db #98,#56,#d8,#56,#f8,#56,#00,#00
db #d8,#52,#18,#57,#38,#57,#00,#00
db #af,#f1,#af,#f1,#af,#f1,#e5,#e5
db #af,#f1,#af,#f1,#af,#f1,#e5,#e5
db #af,#f1,#af,#f1,#af,#f1,#e5,#e5
.l52b8
db #af,#f1,#af,#f1,#af,#f1,#af,#f1
db #af,#f1,#af,#f1,#af,#f1,#af,#f1
db #af,#f1,#af,#f1,#af,#f1,#af,#f1
db #af,#f1,#af,#f1,#af,#f1,#af,#f1
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#02,#04,#08,#0b,#0d,#0e,#0f
db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
db #0f,#0e,#0d,#0b,#09,#08,#07,#06
db #06,#05,#06,#05,#07,#07,#08,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0d,#0c,#0c,#0b,#0b,#0b,#0b
db #0b,#0a,#0a,#0a,#0a,#0a,#0b,#0b
db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#00
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#0a,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#05,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#40,#00,#80,#00,#c0,#00
db #00,#01,#40,#01,#80,#01,#c0,#01
db #00,#02,#40,#02,#80,#02,#c0,#02
db #00,#03,#40,#03,#80,#03,#c0,#03
db #00,#04,#40,#04,#80,#04,#c0,#04
db #00,#05,#40,#05,#80,#05,#c0,#05
db #00,#06,#40,#06,#80,#06,#c0,#06
db #00,#07,#40,#07,#80,#07,#c0,#07
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#09,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#03,#00
db #00,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#08,#08
db #07,#07,#06,#06,#05,#05,#04,#04
db #03,#03,#02,#02,#01,#01,#00,#00
db #00,#00,#30,#00,#60,#00,#90,#00
db #c0,#00,#f0,#00,#20,#01,#50,#01
db #80,#01,#b0,#01,#e0,#01,#10,#02
db #40,#02,#70,#02,#a0,#02,#d0,#02
db #00,#03,#20,#03,#40,#03,#60,#03
db #70,#03,#80,#03,#90,#03,#a0,#03
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
db #0a,#0a,#09,#09,#08,#07,#07,#06
db #06,#05,#05,#04,#04,#03,#03,#02
db #02,#00,#00,#00,#00,#00,#00,#00
db #04,#06,#07,#09,#0c,#11,#17,#1d
db #15,#10,#0c,#09,#06,#05,#04,#04
db #03,#03,#03,#02,#02,#02,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #38,#00,#60,#00,#b0,#00,#18,#01
db #48,#01,#80,#01,#c8,#01,#10,#02
db #58,#02,#b0,#02,#00,#00,#00,#80
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
db #06,#03,#01,#00,#80,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#06,#06,#05,#04,#04,#03,#02
db #01,#00,#80,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#66,#58,#00,#66,#58,#00,#66
db #58,#00,#66,#58,#00,#d1,#58,#00
db #d1,#58,#00,#d1,#58,#00,#d1,#58
db #00,#52,#59,#00,#52,#59,#00,#52
db #59,#00,#52,#59,#00,#b0,#59,#00
db #b0,#59,#00,#b0,#59,#00,#b0,#59
db #00,#f1,#59,#00,#f1,#59,#00,#f1
db #59,#00,#f1,#59,#00,#42,#5a,#00
db #42,#5a,#00,#42,#5a,#00,#42,#5a
db #00,#73,#5a,#00,#73,#5a,#00,#73
db #5a,#00,#73,#5a,#00,#66,#58,#80
db #58,#57,#00,#d1,#5a,#00,#d1,#5a
db #00,#d1,#5a,#00,#d1,#5a,#00,#32
db #5b,#00,#32,#5b,#00,#32,#5b,#00
db #32,#5b,#00,#6b,#5b,#00,#6b,#5b
db #00,#6b,#5b,#00,#6b,#5b,#00,#e7
db #5b,#00,#e7,#5b,#00,#e7,#5b,#00
db #e7,#5b,#00,#ea,#5b,#00,#ea,#5b
db #00,#ea,#5b,#00,#ea,#5b,#00,#3b
db #5c,#00,#3b,#5c,#00,#3b,#5c,#00
db #3b,#5c,#00,#6e,#5c,#00,#6e,#5c
db #00,#6e,#5c,#00,#6e,#5c,#00,#d1
db #5a,#80,#b2,#57,#00,#af,#5c,#00
db #af,#5c,#00,#af,#5c,#00,#af,#5c
db #00,#ef,#5c,#00,#ef,#5c,#00,#ef
db #5c,#00,#ef,#5c,#00,#28,#5d,#00
db #28,#5d,#00,#28,#5d,#00,#28,#5d
db #00,#e7,#5b,#00,#e7,#5b,#00,#e7
db #5b,#00,#e7,#5b,#00,#5e,#5d,#00
db #5e,#5d,#00,#5e,#5d,#00,#5e,#5d
db #00,#ce,#5d,#00,#ce,#5d,#00,#ce
db #5d,#00,#ce,#5d,#00,#4f,#5e,#00
db #4f,#5e,#00,#4f,#5e,#00,#4f,#5e
db #00,#af,#5c,#80,#0c,#58,#68,#00
db #02,#68,#00,#02,#5c,#00,#02,#50
db #00,#02,#44,#00,#02,#44,#00,#02
db #44,#00,#02,#44,#00,#02,#44,#00
db #02,#44,#00,#02,#c4,#00,#c4,#00
db #c4,#00,#c4,#00,#c4,#00,#c4,#00
db #c4,#00,#c4,#00,#d0,#00,#68,#00
db #02,#68,#00,#02,#68,#00,#02,#5c
db #00,#02,#50,#00,#02,#44,#00,#02
db #44,#00,#02,#44,#00,#02,#44,#00
db #02,#44,#00,#02,#44,#00,#02,#44
db #00,#02,#c4,#00,#c4,#00,#c4,#00
db #c4,#00,#c4,#00,#c4,#00,#c4,#00
db #c4,#00,#c4,#00,#d0,#00,#dc,#00
db #ff,#e4,#20,#e4,#20,#e4,#20,#e4
db #20,#e4,#20,#e4,#20,#e4,#20,#e4
db #20,#e4,#20,#e4,#20,#d8,#20,#d8
db #20,#d8,#20,#d8,#20,#d8,#20,#d8
db #20,#d8,#20,#d8,#20,#d8,#20,#d8
db #20,#cc,#20,#cc,#20,#cc,#20,#cc
db #20,#cc,#20,#cc,#20,#cc,#20,#cc
db #20,#cc,#20,#cc,#20,#c0,#20,#c0
db #20,#c0,#20,#c0,#20,#c0,#20,#c0
db #20,#c0,#20,#c0,#20,#b4,#20,#b4
db #20,#b4,#20,#b4,#20,#b4,#20,#b4
db #20,#b4,#20,#b4,#20,#a8,#20,#a8
db #20,#a8,#20,#a8,#20,#a8,#20,#a8
db #20,#9c,#20,#9c,#20,#9c,#20,#9c
db #20,#9c,#20,#9c,#20,#90,#20,#90
db #20,#90,#20,#90,#20,#90,#20,#90
db #20,#ff,#38,#c0,#02,#38,#c0,#02
db #38,#c0,#02,#38,#c0,#02,#38,#c0
db #02,#38,#c0,#02,#38,#c0,#02,#38
db #c0,#02,#38,#c0,#02,#38,#c0,#02
db #38,#c0,#02,#38,#c0,#02,#38,#c0
db #02,#38,#c0,#02,#38,#c0,#02,#38
db #c0,#02,#38,#c0,#02,#38,#c0,#02
db #38,#c0,#02,#38,#c0,#02,#38,#c0
db #04,#42,#80,#02,#42,#80,#02,#42
db #80,#02,#42,#80,#02,#42,#80,#02
db #42,#80,#02,#42,#80,#02,#42,#80
db #02,#42,#80,#02,#42,#80,#02,#ff
db #bd,#40,#38,#30,#02,#38,#00,#05
db #c2,#40,#39,#30,#02,#39,#00,#05
db #c2,#40,#3b,#30,#02,#3b,#00,#05
db #c0,#40,#3f,#30,#02,#3f,#00,#05
db #c0,#40,#3b,#30,#02,#40,#00,#05
db #c2,#40,#38,#30,#02,#3d,#00,#05
db #c2,#40,#34,#30,#02,#38,#00,#05
db #bf,#40,#38,#30,#02,#34,#00,#05
db #ff,#b8,#50,#38,#80,#03,#b8,#60
db #38,#90,#03,#b8,#50,#38,#80,#03
db #b8,#60,#38,#90,#03,#b8,#50,#38
db #80,#03,#b8,#60,#38,#90,#03,#b8
db #50,#38,#80,#03,#b8,#60,#38,#90
db #03,#b8,#50,#38,#80,#03,#b8,#60
db #38,#90,#03,#b8,#50,#38,#80,#03
db #b8,#60,#38,#90,#03,#b8,#50,#38
db #80,#03,#b8,#60,#38,#90,#03,#b8
db #50,#38,#80,#03,#b8,#60,#38,#90
db #03,#ff,#44,#70,#04,#38,#80,#04
db #44,#70,#04,#38,#80,#04,#44,#70
db #04,#38,#80,#04,#44,#70,#04,#38
db #80,#04,#44,#70,#04,#38,#80,#04
db #44,#70,#04,#38,#80,#04,#44,#70
db #04,#38,#80,#04,#44,#70,#04,#38
db #80,#04,#ff,#b4,#60,#b6,#60,#b8
db #60,#39,#60,#04,#b4,#60,#b6,#60
db #b8,#60,#39,#60,#04,#b4,#60,#b6
db #60,#38,#60,#04,#b4,#60,#b6,#60
db #b8,#60,#39,#60,#04,#b4,#60,#b6
db #60,#b8,#60,#39,#60,#04,#b4,#60
db #b6,#60,#b8,#60,#39,#60,#04,#b4
db #60,#b6,#60,#b8,#60,#39,#60,#04
db #b4,#60,#b6,#60,#b8,#60,#b9,#60
db #bb,#60,#bd,#60,#bf,#60,#c0,#60
db #c2,#60,#c4,#60,#c4,#60,#c4,#60
db #c2,#60,#c2,#60,#bd,#60,#bb,#60
db #ff,#38,#60,#02,#38,#70,#02,#38
db #60,#02,#38,#80,#02,#38,#60,#02
db #38,#70,#02,#38,#60,#02,#38,#80
db #02,#38,#60,#02,#38,#70,#02,#38
db #60,#02,#38,#80,#02,#38,#60,#02
db #38,#70,#02,#38,#60,#02,#38,#80
db #02,#38,#60,#02,#38,#70,#02,#38
db #60,#02,#38,#80,#02,#38,#60,#02
db #38,#70,#02,#38,#60,#02,#38,#80
db #02,#38,#60,#02,#38,#70,#02,#38
db #60,#02,#38,#80,#02,#38,#60,#02
db #38,#70,#02,#38,#60,#02,#38,#80
db #02,#ff,#38,#c0,#05,#38,#c0,#03
db #b6,#c0,#36,#c0,#03,#b8,#c0,#38
db #c0,#05,#38,#c0,#05,#39,#c0,#05
db #39,#c0,#02,#b9,#c0,#39,#c0,#05
db #38,#c0,#03,#38,#c0,#04,#39,#c0
db #02,#39,#c0,#02,#39,#c0,#05,#38
db #c0,#04,#38,#c0,#05,#b6,#c0,#36
db #c0,#02,#ff,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#b8,#90,#b8,#90,#b8
db #90,#b8,#90,#38,#90,#04,#b9,#b0
db #b9,#b0,#b9,#b0,#b9,#b0,#b9,#b0
db #b9,#b0,#b9,#b0,#b9,#b0,#b9,#b0
db #b9,#b0,#b9,#b0,#b9,#b0,#b9,#b0
db #b9,#b0,#b9,#b0,#b9,#b0,#b9,#b0
db #b9,#b0,#b9,#b0,#b9,#b0,#ff,#00
db #40,#ff,#e8,#50,#68,#80,#03,#e8
db #60,#68,#90,#03,#e8,#50,#68,#80
db #03,#e8,#60,#68,#90,#03,#e8,#50
db #68,#80,#03,#e8,#60,#68,#90,#03
db #e8,#50,#68,#80,#03,#e8,#60,#68
db #90,#03,#e8,#50,#68,#80,#03,#e8
db #60,#68,#90,#03,#e8,#50,#68,#80
db #03,#e8,#60,#68,#90,#03,#e8,#50
db #68,#80,#03,#e8,#60,#68,#90,#03
db #e8,#50,#68,#80,#03,#e8,#60,#68
db #90,#03,#ff,#00,#02,#38,#90,#04
db #38,#c0,#04,#38,#90,#04,#38,#c0
db #04,#38,#90,#04,#38,#c0,#04,#38
db #90,#04,#38,#c0,#04,#38,#90,#04
db #38,#c0,#04,#38,#90,#04,#38,#c0
db #04,#38,#90,#04,#38,#c0,#04,#38
db #90,#04,#38,#c0,#02,#ff,#44,#80
db #04,#c4,#80,#38,#c0,#03,#44,#80
db #04,#c4,#80,#38,#c0,#03,#44,#80
db #04,#c4,#80,#38,#c0,#03,#44,#80
db #04,#c4,#80,#38,#c0,#03,#44,#80
db #04,#c4,#80,#38,#c0,#03,#44,#80
db #04,#c4,#80,#38,#c0,#03,#44,#80
db #04,#c4,#80,#38,#c0,#03,#44,#80
db #04,#c4,#80,#38,#c0,#03,#ff,#66
db #40,#02,#5a,#40,#02,#4e,#40,#02
db #42,#40,#02,#36,#40,#02,#2a,#40
db #02,#1e,#40,#02,#12,#40,#02,#1e
db #40,#02,#2a,#40,#0d,#66,#40,#02
db #5a,#40,#02,#4e,#40,#02,#42,#40
db #02,#36,#40,#02,#2a,#40,#02,#1e
db #40,#02,#12,#40,#02,#1e,#40,#02
db #2a,#40,#02,#36,#40,#0d,#ff,#b8
db #80,#b8,#90,#38,#a0,#08,#b8,#80
db #b8,#90,#38,#a0,#08,#b8,#80,#b8
db #90,#38,#a0,#08,#b8,#80,#b8,#90
db #38,#a0,#06,#b8,#80,#b8,#90,#38
db #a0,#06,#b8,#80,#b8,#90,#38,#a0
db #04,#b8,#80,#b8,#90,#38,#a0,#04
db #b8,#80,#b8,#90,#38,#a0,#04,#ff
db #c4,#40,#38,#40,#03,#c2,#40,#38
db #40,#03,#c4,#40,#38,#40,#03,#c2
db #40,#38,#40,#03,#c4,#40,#38,#40
db #03,#c2,#40,#38,#40,#03,#c4,#40
db #38,#40,#03,#c2,#40,#38,#40,#03
db #c4,#40,#38,#40,#03,#c2,#40,#38
db #40,#03,#44,#40,#18,#ff,#c4,#c0
db #c4,#c0,#c4,#c0,#c4,#c0,#c4,#c0
db #c4,#c0,#c4,#c0,#c4,#c0,#c4,#c0
db #c4,#c0,#44,#c0,#07,#c4,#c0,#c4
db #c0,#c4,#c0,#c4,#c0,#c4,#c0,#c4
db #c0,#c4,#c0,#c4,#c0,#c4,#c0,#c4
db #c0,#c4,#c0,#c4,#c0,#c4,#c0,#c4
db #c0,#c4,#c0,#c4,#c0,#c4,#c0,#c4
db #c0,#c4,#c0,#c4,#c0,#c4,#c0,#c4
db #c0,#44,#c0,#02,#c4,#c0,#c4,#c0
db #c4,#c0,#c4,#c0,#c4,#c0,#c4,#c0
db #c4,#c0,#c4,#c0,#c4,#c0,#c4,#c0
db #44,#c0,#04,#c4,#c0,#c4,#c0,#c4
db #c0,#c4,#c0,#c4,#c0,#c4,#c0,#c4
db #c0,#c4,#c0,#c4,#c0,#ff,#fe,#01
db #c0,#90,#c0,#90,#c0,#90,#fe,#01
db #fe,#01,#c0,#90,#c0,#90,#c0,#90
db #fe,#01,#fe,#01,#bf,#90,#bf,#90
db #bf,#90,#fe,#01,#fe,#01,#c2,#90
db #c0,#90,#bd,#90,#fe,#01,#fe,#01
db #bb,#90,#c0,#90,#c2,#90,#fe,#01
db #fe,#01,#b9,#90,#c0,#90,#bd,#90
db #fe,#01,#c2,#90,#bf,#90,#b9,#90
db #b8,#90,#fe,#01,#bf,#90,#bd,#90
db #b9,#90,#bb,#90,#fe,#01,#b6,#90
db #bb,#90,#c0,#90,#b9,#90,#fe,#01
db #b6,#90,#b8,#90,#b6,#90,#b9,#90
db #fe,#01,#b6,#90,#c2,#90,#c0,#90
db #c4,#90,#fe,#01,#bb,#90,#b8,#90
db #b8,#90,#b6,#90,#fe,#01,#b6,#90
db #b8,#90,#b6,#90,#b8,#90,#ff,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#b8
db #90,#38,#c0,#03,#38,#b0,#04,#ff
nop
nop
nop
nop
jp l5e9d	; Facorita
jp l5f31
jp l5f15
.l5e9d
xor a
ld hl,l6448
call l5f0e
ld hl,l6476
call l5f0e
ld hl,l64a4
call l5f0e
ld ix,l6444
ld iy,l64ce
ld de,#002e
ld b,#03
.l5ebd
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l5ebd
ld hl,l635d
ld (hl),#04
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l6359),hl
ld (l635b),hl
ld a,#0c
ld c,d
call l6339
ld a,#0d
ld c,d
jp l6339
.l5f0e
ld b,#2a
.l5f10
ld (hl),a
inc hl
djnz l5f10
ret
.l5f15
ld a,#07
ld c,#3f
call l6339
ld a,#08
ld c,#00
call l6339
ld a,#09
ld c,#00
call l6339
ld a,#0a
ld c,#00
jp l6339
.l5f31
ld hl,l635f
dec (hl)
ld ix,l6444
ld bc,l6452
call l5fd3
ld ix,l6472
ld bc,l6480
call l5fd3
ld ix,l64a0
ld bc,l64ae
call l5fd3
ld hl,l6358
ld de,l635f
ld b,#06
call l5fb0
ld b,#07
call l5fb0
ld b,#0b
call l5fb0
ld b,#0d
call l5fb0
ld de,l635f
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l6463
call l5f89
ld hl,l6491
call l5f89
ld hl,l64bf
.l5f89
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l5f9e
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l5f9e
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l5fb0
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l6339
.l5fbb
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l6339
.l5fd3
ld a,(l635f)
or a
jp nz,l608b
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l608b
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l5fbb
or a
jp z,l6080
ld r,a
and #7f
cp #10
jr c,l605b
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l61d3
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l6034
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l6034
rrca
ld c,a
ld hl,l64d4
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l6053
ld (ix+#1e),b
.l6053
ld a,i
pop hl
ld d,b
and #0f
jr z,l6074
.l605b
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l6364
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l6074
ld a,d
or a
jr nz,l6082
ld a,r
bit 7,a
ld a,#01
jr nz,l6082
.l6080
ld a,(hl)
inc hl
.l6082
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l608b
ld a,(ix+#17)
or a
jr nz,l60a1
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l60a1
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l60b7
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l60b7
ld a,(ix+#0d)
or a
jr z,l60c5
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l60e3
.l60c5
ld a,(ix+#1a)
or a
jp z,l60ea
ld c,a
cp #03
jr nz,l60d2
xor a
.l60d2
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l60e3
ld a,(ix+#18)
dec c
jr z,l60e3
ld a,(ix+#19)
.l60e3
add (ix+#07)
ld b,d
call l61d3
.l60ea
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l6112
dec (ix+#1b)
jr nz,l6112
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l614a
.l6112
ld a,(ix+#29)
or a
jr z,l614a
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l6141
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l6138
ld (ix+#29),#ff
jr l6141
.l6138
cp (ix+#2b)
jr nz,l6141
ld (ix+#29),#01
.l6141
ld b,d
or a
jp p,l6147
dec b
.l6147
ld c,a
jr l6155
.l614a
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l6155
pop hl
bit 7,(ix+#14)
jr z,l615e
ld h,d
ld l,d
.l615e
add hl,bc
ld c,l
ld a,(ix+#01)
call l6339
ld c,h
ld a,(ix+#02)
call l6339
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l61b1
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l61a0
dec (ix+#09)
jr nz,l61a0
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l6198
xor a
jr l619d
.l6198
cp #10
jr nz,l619d
dec a
.l619d
ld (ix+#1e),a
.l61a0
ld a,b
sub (ix+#1e)
jr nc,l61a7
xor a
.l61a7
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l6339
.l61b1
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l6360)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l61cf
ld l,a
ld a,b
cpl
and h
ld h,a
.l61cf
ld (l6360),hl
ret
.l61d3
ld hl,l6382
cp #61
jr nc,l61dd
add a
ld c,a
add hl,bc
.l61dd
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l61e7
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l630c
ld (ix+#1e),a
jp l6074
.l61f9
dec b
.l61fa
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l6205
neg
.l6205
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l6074
.l621b
dec b
jr l621f
.l621e
inc b
.l621f
call l630c
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l6074
.l622e
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l62f1
.l623f
ld a,(hl)
inc hl
or a
jr z,l6261
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l6261
ld (ix+#29),a
jp l6074
.l6267
dec hl
ld a,(hl)
and #0f
ld (l6363),a
inc hl
ld a,(hl)
inc hl
ld (l6362),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l6074
.l6281
ld a,(hl)
or a
jr z,l6292
call l630e
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l6074
.l6292
ld hl,#0101
ld (l635e),hl
jp l6074
.l629b
call l630c
ld (ix+#1e),a
jp l6074
.l62a4
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l631d
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l631d
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l6074
.l62c6
ld a,(hl)
inc hl
ld (l635d),a
jp l6074
.l62ce
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l6074
.l62ed
call l630c
add a
.l62f1
ld b,#00
ld c,a
push hl
ld hl,l6554
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l6074
.l630c
ld a,(hl)
inc hl
.l630e
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l631d
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l64d4
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l6339
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l6358
ret
.l6360 equ $ + 7
.l635f equ $ + 6
.l635e equ $ + 5
.l635d equ $ + 4
.l635b equ $ + 2
.l6359
db #00,#00,#00,#00,#00,#00,#00,#00
.l6363 equ $ + 2
.l6362 equ $ + 1
db #38,#00,#00
.l6364
dw l61e7,l61fa,l61f9,l621e
dw l621b,l622e,l623f,l6267
dw l6281,l6267,l629b,l62a4
dw l62c6,l62ce,l62ed
.l6382
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l6448 equ $ + 4
.l6444
db #08,#00,#01,#08,#00,#00,#00,#00
.l6452 equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6463 equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6472 equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l6476 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l6480 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6491 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l64a0 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l64a4
db #00,#00,#00,#00,#00,#00,#00,#00
.l64ae equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l64bf equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l64ce equ $ + 2
db #00,#00,#d4,#68,#16,#69,#58,#69
.l64d4
db #66,#1e,#9e,#72,#de,#72,#98,#54
db #66,#1e,#1e,#73,#5e,#73,#38,#53
db #66,#1e,#7e,#73,#be,#73,#78,#55
db #66,#1e,#fe,#73,#3e,#74,#f8,#55
db #74,#65,#b4,#65,#d4,#65,#20,#00
db #26,#1f,#fe,#74,#3e,#75,#f8,#56
db #f4,#65,#34,#66,#54,#66,#00,#00
db #66,#1e,#15,#10,#15,#10,#af,#f1
db #74,#66,#b4,#66,#d4,#66,#00,#00
db #4b,#04,#15,#10,#15,#10,#af,#f1
db #f4,#66,#34,#67,#54,#67,#c0,#00
db #74,#67,#b4,#67,#d4,#67,#00,#00
db #74,#65,#f4,#67,#14,#68,#00,#00
db #34,#68,#74,#68,#94,#68,#00,#00
db #15,#10,#66,#1e,#66,#1e,#00,#00
db #74,#65,#b4,#68,#d4,#65,#00,#00
.l6554
db #66,#1e,#66,#1e,#66,#1e,#66,#1e
db #66,#1e,#66,#1e,#66,#1e,#66,#1e
db #66,#1e,#66,#1e,#66,#1e,#66,#1e
db #66,#1e,#66,#1e,#66,#1e,#66,#1e
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#0a,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#05,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#40,#00,#80,#00,#c0,#00
db #00,#01,#40,#01,#80,#01,#c0,#01
db #00,#02,#40,#02,#80,#02,#c0,#02
db #00,#03,#40,#03,#80,#03,#c0,#03
db #00,#04,#40,#04,#80,#04,#c0,#04
db #00,#05,#40,#05,#80,#05,#c0,#05
db #00,#06,#40,#06,#80,#06,#c0,#06
db #00,#07,#40,#07,#80,#07,#c0,#07
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#09,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#03,#00
db #00,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #00,#00,#30,#00,#60,#00,#90,#00
db #c0,#00,#f0,#00,#20,#01,#50,#01
db #80,#01,#b0,#01,#e0,#01,#10,#02
db #40,#02,#70,#02,#a0,#02,#d0,#02
db #00,#03,#20,#03,#40,#03,#60,#03
db #70,#03,#80,#03,#90,#03,#a0,#03
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
db #0a,#0a,#09,#09,#08,#07,#07,#06
db #06,#05,#05,#04,#04,#03,#03,#02
db #02,#00,#00,#00,#00,#00,#00,#00
db #04,#06,#07,#09,#0c,#11,#17,#1d
db #15,#10,#0c,#09,#06,#05,#04,#04
db #03,#03,#03,#02,#02,#02,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #38,#00,#60,#00,#b0,#00,#18,#01
db #48,#01,#80,#01,#c8,#01,#10,#02
db #58,#02,#b0,#02,#00,#00,#00,#80
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
db #06,#03,#01,#00,#80,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#06,#06,#05,#04,#04,#03,#02
db #01,#00,#80,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#80,#00,#40,#01,#a0,#01
db #40,#02,#e8,#02,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#08,#08,#07,#07,#07,#06,#06
db #06,#05,#05,#05,#04,#04,#04,#03
db #03,#03,#02,#03,#02,#01,#01,#01
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#9a,#69,#00,#9d,#69,#00,#9a
db #69,#00,#9d,#69,#00,#1e,#6a,#00
db #1e,#6a,#00,#1e,#6a,#00,#1e,#6a
db #00,#1e,#6a,#00,#1e,#6a,#00,#1e
db #6a,#00,#61,#6a,#00,#61,#6a,#00
db #a5,#6a,#00,#61,#6a,#00,#a5,#6a
db #00,#a5,#6a,#00,#a5,#6a,#00,#a5
db #6a,#00,#a5,#6a,#00,#a5,#6a,#80
db #d4,#68,#00,#9a,#69,#00,#66,#6b
db #00,#9a,#69,#00,#66,#6b,#00,#66
db #6b,#00,#66,#6b,#00,#69,#6b,#00
db #69,#6b,#00,#69,#6b,#00,#b8,#6b
db #00,#b8,#6b,#00,#fc,#6b,#00,#fc
db #6b,#00,#41,#6c,#00,#fc,#6b,#00
db #41,#6c,#00,#41,#6c,#00,#41,#6c
db #00,#41,#6c,#00,#41,#6c,#00,#41
db #6c,#80,#16,#69,#00,#02,#6d,#00
db #66,#6b,#00,#02,#6d,#00,#66,#6b
db #00,#b8,#6b,#00,#b8,#6b,#00,#b8
db #6b,#00,#b8,#6b,#00,#b8,#6b,#00
db #84,#6d,#00,#84,#6d,#00,#a5,#6a
db #00,#a5,#6a,#00,#e5,#6d,#00,#a5
db #6a,#00,#e5,#6d,#00,#e9,#6d,#00
db #e9,#6d,#00,#e5,#6d,#00,#e9,#6d
db #00,#e9,#6d,#80,#58,#69,#fe,#40
db #ff,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#80,#c4
db #c0,#b4,#c0,#bd,#c0,#b9,#60,#c4
db #c0,#ff,#b4,#c0,#bd,#c0,#b9,#80
db #c4,#c0,#b4,#c0,#bd,#c0,#b9,#60
db #c4,#c0,#b4,#c0,#bd,#c0,#b9,#80
db #c4,#c0,#b4,#c0,#bd,#c0,#b9,#60
db #44,#c0,#11,#b4,#c0,#bd,#c0,#b9
db #80,#c4,#c0,#b4,#c0,#bd,#c0,#b9
db #60,#c4,#c0,#b4,#c0,#bd,#c0,#b9
db #80,#c4,#c0,#b4,#c0,#bd,#c0,#b9
db #60,#44,#c0,#11,#ff,#34,#c1,#10
db #bd,#c0,#b9,#80,#c4,#c0,#b4,#c0
db #bd,#c0,#b9,#60,#c4,#c0,#b4,#c0
db #bd,#c0,#b9,#80,#c4,#c0,#b4,#c0
db #bd,#c0,#b9,#60,#44,#c0,#11,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#44,#c0,#11
db #ff,#ac,#4a,#06,#0a,#06,#01,#b6
db #4a,#06,#0a,#06,#01,#c0,#4a,#06
db #0a,#06,#01,#ac,#4a,#06,#0a,#06
db #01,#b6,#4a,#06,#0a,#06,#01,#c0
db #4a,#06,#0a,#06,#01,#ac,#4a,#06
db #0a,#06,#01,#b6,#4a,#06,#0a,#06
db #01,#c0,#4a,#07,#0a,#08,#01,#ac
db #4a,#08,#0a,#08,#01,#b6,#4a,#08
db #0a,#08,#01,#c0,#4a,#08,#0a,#08
db #01,#ac,#4a,#08,#0a,#08,#01,#b6
db #4a,#08,#0a,#08,#01,#c0,#4a,#08
db #0a,#08,#01,#ac,#4a,#08,#0a,#08
db #01,#b6,#4a,#07,#0a,#06,#01,#c0
db #4a,#06,#0a,#06,#01,#ac,#4a,#06
db #0a,#06,#01,#b6,#4a,#06,#0a,#06
db #01,#c0,#4a,#06,#0a,#06,#01,#ac
db #4a,#06,#0a,#06,#01,#b6,#4a,#06
db #0a,#06,#01,#c0,#4a,#06,#0a,#06
db #01,#b3,#4a,#05,#0a,#05,#01,#bd
db #4a,#05,#0a,#05,#01,#c7,#4a,#05
db #0a,#05,#01,#ad,#4a,#05,#0a,#05
db #01,#b8,#4a,#05,#0a,#05,#01,#c2
db #4a,#05,#0a,#05,#01,#a8,#4a,#05
db #0a,#05,#01,#0a,#05,#01,#0a,#05
db #01,#ff,#00,#40,#ff,#44,#d0,#02
db #42,#d0,#02,#44,#d0,#02,#40,#d0
db #02,#44,#d0,#02,#3f,#d0,#02,#3d
db #d0,#02,#3b,#d0,#06,#44,#d0,#02
db #42,#d0,#02,#44,#d0,#02,#40,#d0
db #02,#44,#d0,#02,#3f,#d0,#02,#3d
db #d0,#02,#3b,#d0,#06,#44,#d0,#02
db #42,#d0,#02,#44,#d0,#02,#40,#d0
db #02,#44,#d0,#02,#3f,#d0,#02,#3d
db #d0,#02,#3b,#d0,#06,#44,#d0,#02
db #42,#d0,#02,#ff,#00,#10,#b4,#c0
db #bd,#c0,#b9,#80,#c4,#c0,#b4,#c0
db #bd,#c0,#b9,#60,#c4,#c0,#b4,#c0
db #bd,#c0,#b9,#80,#c4,#c0,#b4,#c0
db #bd,#c0,#b9,#60,#44,#c0,#11,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#ff
db #01,#00,#10,#b4,#c0,#bd,#c0,#b9
db #80,#c4,#c0,#b4,#c0,#bd,#c0,#b9
db #60,#c4,#c0,#b4,#c0,#bd,#c0,#b9
db #80,#c4,#c0,#b4,#c0,#bd,#c0,#b9
db #60,#44,#c0,#11,#b4,#c0,#bd,#c0
db #b9,#80,#c4,#c0,#b4,#c0,#bd,#c0
db #b9,#60,#c4,#c0,#b4,#c0,#bd,#c0
db #b9,#80,#c4,#c0,#b4,#c0,#bd,#c0
db #b9,#60,#c4,#c0,#ff,#94,#fa,#06
db #0a,#06,#01,#92,#fa,#06,#0a,#06
db #01,#9c,#fa,#06,#0a,#06,#01,#94
db #fa,#06,#0a,#06,#01,#92,#fa,#06
db #0a,#06,#01,#9c,#fa,#06,#0a,#06
db #01,#94,#fa,#06,#0a,#06,#01,#92
db #fa,#06,#0a,#06,#01,#9c,#fa,#07
db #0a,#08,#01,#94,#fa,#08,#0a,#08
db #01,#92,#fa,#08,#0a,#08,#01,#9c
db #fa,#08,#0a,#08,#01,#94,#fa,#08
db #0a,#08,#01,#92,#fa,#08,#0a,#08
db #01,#9c,#fa,#08,#0a,#08,#01,#94
db #fa,#08,#0a,#08,#01,#92,#fa,#07
db #0a,#06,#01,#9c,#fa,#06,#0a,#06
db #01,#94,#fa,#06,#0a,#06,#01,#92
db #fa,#06,#0a,#06,#01,#9c,#fa,#06
db #0a,#06,#01,#94,#fa,#06,#0a,#06
db #01,#92,#fa,#06,#0a,#06,#01,#9c
db #fa,#06,#0a,#06,#01,#9b,#fa,#05
db #0a,#05,#01,#99,#fa,#05,#0a,#05
db #01,#a3,#fa,#05,#0a,#05,#01,#95
db #fa,#05,#0a,#05,#01,#94,#fa,#05
db #0a,#05,#01,#9e,#fa,#05,#0a,#05
db #01,#90,#fa,#05,#0a,#05,#01,#0a
db #05,#01,#0a,#05,#01,#ff,#34,#c1
db #10,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#80,#c4,#c0,#b4
db #c0,#bd,#c0,#b9,#60,#c4,#c0,#ff
db #38,#d0,#02,#39,#b0,#02,#38,#d0
db #02,#39,#b0,#02,#38,#d0,#02,#39
db #b0,#02,#38,#d0,#02,#39,#b0,#02
db #2b,#a0,#02,#38,#c0,#02,#2b,#a0
db #02,#38,#c0,#02,#2b,#a0,#02,#38
db #c0,#02,#2b,#a0,#02,#38,#c0,#02
db #38,#d0,#02,#39,#b0,#02,#38,#d0
db #02,#39,#b0,#02,#38,#d0,#02,#39
db #b0,#02,#38,#d0,#02,#39,#b0,#02
db #2b,#a0,#02,#38,#c0,#02,#2b,#a0
db #02,#38,#c0,#02,#2b,#a0,#02,#38
db #c0,#02,#2b,#a0,#02,#38,#c0,#02
db #ff,#01,#00,#40,#ff,#39,#61,#10
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#b9,#60
db #c4,#c0,#b9,#d0,#aa,#60,#ff
nop
jp l6e75	; Guns War
jp l6f09
jp l6eed
.l6e75
xor a
ld hl,l7420
call l6ee6
ld hl,l744e
call l6ee6
ld hl,l747c
call l6ee6
ld ix,l741c
ld iy,l74a6
ld de,#002e
ld b,#03
.l6e95
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l6e95
ld hl,l7335
ld (hl),#07
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l7331),hl
ld (l7333),hl
ld a,#0c
ld c,d
call l7311
ld a,#0d
ld c,d
jp l7311
.l6ee6
ld b,#2a
.l6ee8
ld (hl),a
inc hl
djnz l6ee8
ret
.l6eed
ld a,#07
ld c,#3f
call l7311
ld a,#08
ld c,#00
call l7311
ld a,#09
ld c,#00
call l7311
ld a,#0a
ld c,#00
jp l7311
.l6f09
ld hl,l7337
dec (hl)
ld ix,l741c
ld bc,l742a
call l6fab
ld ix,l744a
ld bc,l7458
call l6fab
ld ix,l7478
ld bc,l7486
call l6fab
ld hl,l7330
ld de,l7337
ld b,#06
call l6f88
ld b,#07
call l6f88
ld b,#0b
call l6f88
ld b,#0d
call l6f88
ld de,l7337
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l743b
call l6f61
ld hl,l7469
call l6f61
ld hl,l7497
.l6f61
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l6f76
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l6f76
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l6f88
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l7311
.l6f93
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l7311
.l6fab
ld a,(l7337)
or a
jp nz,l7063
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l7063
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l6f93
or a
jp z,l7058
ld r,a
and #7f
cp #10
jr c,l7033
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l71ab
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l700c
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l700c
rrca
ld c,a
ld hl,l74ac
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l702b
ld (ix+#1e),b
.l702b
ld a,i
pop hl
ld d,b
and #0f
jr z,l704c
.l7033
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l733c
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l704c
ld a,d
or a
jr nz,l705a
ld a,r
bit 7,a
ld a,#01
jr nz,l705a
.l7058
ld a,(hl)
inc hl
.l705a
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l7063
ld a,(ix+#17)
or a
jr nz,l7079
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l7079
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l708f
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l708f
ld a,(ix+#0d)
or a
jr z,l709d
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l70bb
.l709d
ld a,(ix+#1a)
or a
jp z,l70c2
ld c,a
cp #03
jr nz,l70aa
xor a
.l70aa
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l70bb
ld a,(ix+#18)
dec c
jr z,l70bb
ld a,(ix+#19)
.l70bb
add (ix+#07)
ld b,d
call l71ab
.l70c2
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l70ea
dec (ix+#1b)
jr nz,l70ea
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l7122
.l70ea
ld a,(ix+#29)
or a
jr z,l7122
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l7119
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l7110
ld (ix+#29),#ff
jr l7119
.l7110
cp (ix+#2b)
jr nz,l7119
ld (ix+#29),#01
.l7119
ld b,d
or a
jp p,l711f
dec b
.l711f
ld c,a
jr l712d
.l7122
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l712d
pop hl
bit 7,(ix+#14)
jr z,l7136
ld h,d
ld l,d
.l7136
add hl,bc
ld c,l
ld a,(ix+#01)
call l7311
ld c,h
ld a,(ix+#02)
call l7311
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l7189
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l7178
dec (ix+#09)
jr nz,l7178
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l7170
xor a
jr l7175
.l7170
cp #10
jr nz,l7175
dec a
.l7175
ld (ix+#1e),a
.l7178
ld a,b
sub (ix+#1e)
jr nc,l717f
xor a
.l717f
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l7311
.l7189
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l7338)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l71a7
ld l,a
ld a,b
cpl
and h
ld h,a
.l71a7
ld (l7338),hl
ret
.l71ab
ld hl,l735a
cp #61
jr nc,l71b5
add a
ld c,a
add hl,bc
.l71b5
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l71bf
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l72e4
ld (ix+#1e),a
jp l704c
.l71d1
dec b
.l71d2
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l71dd
neg
.l71dd
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l704c
.l71f3
dec b
jr l71f7
.l71f6
inc b
.l71f7
call l72e4
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l704c
.l7206
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l72c9
.l7217
ld a,(hl)
inc hl
or a
jr z,l7239
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l7239
ld (ix+#29),a
jp l704c
.l723f
dec hl
ld a,(hl)
and #0f
ld (l733b),a
inc hl
ld a,(hl)
inc hl
ld (l733a),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l704c
.l7259
ld a,(hl)
or a
jr z,l726a
call l72e6
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l704c
.l726a
ld hl,#0101
ld (l7336),hl
jp l704c
.l7273
call l72e4
ld (ix+#1e),a
jp l704c
.l727c
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l72f5
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l72f5
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l704c
.l729e
ld a,(hl)
inc hl
ld (l7335),a
jp l704c
.l72a6
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l704c
.l72c5
call l72e4
add a
.l72c9
ld b,#00
ld c,a
push hl
ld hl,l752c
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l704c
.l72e4
ld a,(hl)
inc hl
.l72e6
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l72f5
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l74ac
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l7311
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l7330
ret
.l7338 equ $ + 7
.l7337 equ $ + 6
.l7336 equ $ + 5
.l7335 equ $ + 4
.l7333 equ $ + 2
.l7331
db #00,#00,#00,#00,#00,#00,#00,#00
.l733b equ $ + 2
.l733a equ $ + 1
db #38,#00,#00
.l733c
dw l71bf,l71d2,l71d1,l71f6
dw l71f3,l7206,l7217,l723f
dw l7259,l723f,l7273,l727c
dw l729e,l72a6,l72c5
.l735a
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l7420 equ $ + 4
.l741c
db #08,#00,#01,#08,#00,#00,#00,#00
.l742a equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l743b equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l744a equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l744e equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l7458 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7469 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7478 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l747c
db #00,#00,#00,#00,#00,#00,#00,#00
.l7486 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7497 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l74a6 equ $ + 2
db #00,#00,#2c,#78,#62,#78,#98,#78
.l74ac
db #36,#85,#32,#94,#72,#94,#54,#66
db #4c,#75,#8c,#75,#ac,#75,#1a,#06
db #cc,#75,#0c,#76,#2c,#76,#00,#00
db #4c,#76,#8c,#76,#ac,#76,#80,#00
db #cc,#76,#0c,#77,#2c,#76,#08,#18
db #fe,#2e,#b2,#95,#f2,#95,#d4,#67
db #cc,#75,#0c,#76,#2c,#77,#00,#00
db #4c,#77,#8c,#77,#2c,#76,#48,#08
db #ac,#77,#ec,#77,#2c,#76,#40,#00
db #cc,#75,#0c,#78,#2c,#76,#00,#00
db #3e,#2e,#a4,#4c,#a4,#4c,#66,#1e
db #a4,#4c,#a4,#4c,#a4,#4c,#66,#1e
db #a4,#4c,#a4,#4c,#a4,#4c,#66,#1e
db #a4,#4c,#a4,#4c,#a4,#4c,#66,#1e
db #a4,#4c,#3e,#2e,#3e,#2e,#00,#00
db #3e,#2e,#3e,#2e,#3e,#2e,#00,#00
.l752c
db #3e,#2e,#3e,#2e,#3e,#2e,#3e,#2e
db #3e,#2e,#3e,#2e,#3e,#2e,#3e,#2e
db #3e,#2e,#3e,#2e,#3e,#2e,#3e,#2e
db #3e,#2e,#3e,#2e,#3e,#2e,#3e,#2e
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#01,#00
db #01,#00,#01,#00,#ff,#ff,#ff,#ff
db #00,#00,#00,#00,#01,#00,#01,#00
db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
db #0d,#10,#0e,#0d,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #ff,#ff,#00,#00,#00,#00,#00,#00
db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#01,#00,#01,#00,#01,#00
db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #00,#00,#00,#00,#01,#00,#01,#00
db #02,#00,#02,#00,#01,#00,#01,#00
db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
db #09,#08,#08,#08,#08,#08,#08,#08
db #08,#08,#08,#08,#07,#06,#05,#04
db #03,#02,#01,#00,#00,#00,#00,#00
db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
db #09,#09,#09,#08,#08,#07,#07,#06
db #05,#04,#03,#02,#01,#00,#00,#00
db #00,#ce,#78,#00,#de,#78,#00,#08
db #79,#00,#46,#79,#00,#46,#79,#00
db #ac,#79,#00,#04,#7a,#00,#04,#7a
db #00,#85,#7a,#00,#04,#7a,#00,#85
db #7a,#00,#be,#7a,#00,#d1,#7a,#00
db #05,#7b,#00,#05,#7b,#00,#18,#7b
db #00,#22,#7b,#80,#2f,#78,#00,#25
db #7b,#00,#49,#7b,#00,#8f,#7b,#00
db #a0,#7b,#00,#a0,#7b,#00,#01,#7c
db #00,#6e,#7c,#00,#6e,#7c,#00,#e6
db #7c,#00,#6e,#7c,#00,#e6,#7c,#00
db #67,#7d,#00,#bf,#7d,#00,#e1,#7d
db #00,#e1,#7d,#00,#12,#7e,#00,#22
db #7b,#80,#65,#78,#00,#22,#7b,#00
db #22,#7b,#00,#22,#7b,#00,#22,#7b
db #00,#22,#7b,#00,#22,#7b,#00,#64
db #7e,#00,#64,#7e,#00,#a4,#7e,#00
db #64,#7e,#00,#a4,#7e,#00,#0d,#7f
db #00,#22,#7b,#00,#22,#7b,#00,#22
db #7b,#00,#22,#7b,#00,#22,#7b,#80
db #9b,#78,#3b,#10,#09,#3d,#10,#0d
db #3f,#10,#07,#40,#10,#0b,#42,#10
db #18,#ff,#3f,#10,#04,#40,#10,#05
db #3f,#10,#05,#40,#10,#04,#3f,#10
db #04,#40,#10,#05,#3f,#10,#05,#40
db #10,#06,#3f,#10,#05,#40,#10,#05
db #3f,#10,#05,#40,#10,#06,#3f,#10
db #04,#c0,#10,#ff,#00,#08,#0b,#82
db #0b,#f5,#fe,#01,#3f,#90,#02,#bf
db #90,#3f,#90,#02,#bd,#90,#3d,#90
db #02,#bf,#90,#3f,#90,#02,#bd,#90
db #3d,#90,#02,#bf,#90,#3f,#90,#02
db #bb,#90,#3b,#90,#02,#bf,#90,#3f
db #90,#02,#bd,#90,#3d,#90,#02,#bf
db #90,#3f,#90,#02,#3b,#90,#02,#bb
db #90,#ff,#3b,#60,#02,#3b,#60,#03
db #3d,#60,#02,#3d,#60,#03,#3b,#60
db #02,#3b,#60,#02,#3f,#60,#03,#3b
db #60,#04,#40,#60,#02,#bb,#60,#c0
db #60,#bb,#60,#c0,#60,#bb,#60,#c0
db #60,#c0,#60,#bb,#60,#c0,#60,#bb
db #60,#c0,#60,#bb,#60,#c0,#60,#bb
db #60,#3b,#60,#02,#bb,#60,#bf,#60
db #bb,#60,#bf,#60,#bb,#60,#bf,#60
db #bb,#60,#bf,#60,#bb,#60,#3f,#60
db #03,#bb,#60,#bd,#60,#bb,#60,#bd
db #60,#bb,#60,#bd,#60,#3d,#60,#02
db #bb,#60,#3d,#60,#03,#bf,#60,#ff
db #bf,#20,#3f,#20,#02,#40,#20,#03
db #c0,#20,#c0,#20,#bd,#20,#3d,#20
db #02,#3d,#20,#02,#3d,#20,#02,#40
db #20,#04,#3d,#20,#02,#3d,#20,#03
db #40,#20,#03,#bf,#20,#3f,#20,#02
db #bf,#20,#42,#20,#03,#42,#20,#02
db #42,#20,#02,#42,#20,#03,#40,#20
db #02,#c0,#20,#40,#20,#02,#3f,#20
db #02,#3f,#20,#02,#42,#20,#02,#c2
db #20,#42,#20,#03,#3f,#20,#02,#3f
db #20,#02,#3d,#20,#03,#c0,#20,#ff
db #bf,#90,#bf,#90,#b9,#90,#bf,#90
db #b9,#90,#bf,#90,#b9,#90,#bf,#90
db #b9,#90,#bf,#90,#b9,#90,#bf,#90
db #b9,#90,#bf,#90,#b9,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #c0,#90,#bf,#90,#c0,#90,#bf,#90
db #b9,#90,#c0,#90,#bf,#90,#c0,#90
db #bf,#90,#c0,#90,#bf,#90,#bb,#90
db #c0,#90,#bf,#90,#c0,#90,#bb,#90
db #bf,#90,#c0,#90,#bb,#90,#bf,#90
db #c0,#90,#bb,#90,#bf,#90,#c0,#90
db #bf,#90,#b9,#90,#c0,#90,#bf,#90
db #b9,#90,#c0,#90,#bf,#90,#c0,#90
db #b9,#90,#bf,#90,#c0,#90,#b9,#90
db #ff,#c9,#70,#cc,#70,#cb,#70,#cb
db #70,#45,#70,#04,#47,#70,#04,#47
db #70,#04,#49,#70,#02,#49,#70,#02
db #49,#70,#04,#cc,#70,#4c,#70,#03
db #4c,#70,#03,#cb,#70,#cb,#70,#4b
db #70,#04,#47,#70,#0a,#47,#70,#03
db #47,#70,#04,#49,#70,#05,#4b,#70
db #05,#ff,#45,#40,#0c,#4b,#40,#0b
db #49,#40,#0f,#4c,#40,#0b,#4b,#40
db #0b,#49,#40,#04,#ff,#4c,#40,#05
db #4c,#40,#04,#4b,#40,#05,#4b,#40
db #05,#4c,#40,#04,#4c,#40,#04,#4b
db #40,#03,#4b,#40,#04,#49,#40,#08
db #49,#40,#03,#47,#40,#05,#49,#40
db #07,#4b,#40,#07,#ff,#00,#03,#49
db #60,#3d,#ff,#00,#03,#4c,#60,#3d
db #ff,#00,#03,#4c,#40,#11,#4b,#40
db #09,#45,#40,#0d,#47,#40,#16,#ff
db #45,#90,#40,#ff,#4c,#40,#18,#4b
db #4b,#00,#27,#fe,#01,#ff,#00,#40
db #ff,#00,#16,#42,#30,#06,#c0,#30
db #3f,#30,#0b,#c2,#30,#42,#30,#09
db #c0,#30,#c0,#30,#c0,#30,#40,#30
db #05,#c2,#30,#c2,#30,#42,#30,#02
db #c2,#30,#c2,#30,#ff,#00,#09,#3f
db #20,#05,#3d,#20,#06,#c0,#20,#c0
db #20,#40,#20,#03,#3f,#20,#02,#3f
db #20,#03,#40,#20,#02,#40,#20,#02
db #40,#20,#05,#3d,#20,#02,#3d,#20
db #04,#c0,#20,#c0,#20,#bf,#20,#c0
db #20,#bf,#20,#c0,#20,#bf,#20,#c0
db #20,#3b,#20,#04,#c0,#20,#c0,#20
db #bf,#20,#c0,#20,#bf,#20,#c0,#20
db #bf,#20,#ff,#00,#33,#3b,#30,#03
db #3b,#30,#03,#3b,#30,#03,#3b,#30
db #03,#bb,#30,#ff,#3f,#30,#02,#3f
db #30,#02,#3f,#30,#02,#3f,#30,#02
db #3f,#30,#02,#3f,#30,#02,#3f,#30
db #02,#3f,#30,#02,#3f,#30,#02,#3f
db #30,#02,#3f,#30,#02,#3f,#30,#02
db #3f,#30,#02,#3f,#30,#02,#3f,#30
db #02,#3f,#30,#02,#3f,#30,#02,#3f
db #30,#02,#3f,#30,#02,#3f,#30,#02
db #3f,#30,#02,#3f,#30,#02,#3f,#30
db #02,#3f,#30,#02,#3f,#30,#02,#3f
db #30,#02,#3f,#30,#02,#3f,#30,#02
db #3f,#30,#02,#3f,#30,#02,#3f,#30
db #02,#3f,#30,#02,#ff,#3d,#30,#02
db #3d,#30,#02,#3d,#30,#02,#bd,#30
db #bd,#30,#bd,#30,#3d,#30,#02,#bd
db #30,#bd,#30,#bd,#30,#bd,#30,#bd
db #30,#bd,#30,#bd,#30,#3d,#30,#02
db #bd,#30,#3d,#30,#02,#3d,#30,#02
db #3d,#30,#03,#3d,#30,#02,#3d,#30
db #02,#bd,#30,#bd,#30,#bd,#30,#3d
db #30,#02,#bd,#30,#bd,#30,#3d,#30
db #02,#bd,#30,#3d,#30,#02,#3d,#30
db #02,#bd,#30,#bd,#30,#3d,#30,#02
db #3d,#30,#02,#bd,#30,#bf,#30,#bd
db #30,#bf,#30,#3d,#30,#02,#3f,#30
db #02,#bd,#30,#bf,#30,#bd,#30,#b9
db #30,#ff,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #c0,#30,#bf,#30,#c0,#30,#bf,#30
db #40,#30,#02,#3f,#30,#02,#40,#30
db #02,#3f,#30,#02,#40,#30,#02,#3f
db #30,#02,#40,#30,#03,#bf,#30,#c0
db #30,#bf,#30,#c0,#30,#bf,#30,#c0
db #30,#bf,#30,#c0,#30,#bf,#30,#c0
db #30,#bf,#30,#c0,#30,#bf,#30,#c0
db #30,#ff,#c4,#30,#ce,#30,#c0,#30
db #c2,#30,#c4,#30,#c5,#30,#c7,#30
db #c9,#30,#cb,#30,#cc,#30,#ce,#30
db #d0,#30,#c0,#30,#c2,#30,#c4,#30
db #c5,#30,#c7,#30,#c9,#30,#cb,#30
db #cc,#30,#ce,#30,#d0,#30,#c0,#30
db #c2,#30,#c4,#30,#c5,#30,#c7,#30
db #c9,#30,#cb,#30,#cc,#30,#ce,#30
db #d0,#30,#c0,#30,#c2,#30,#c4,#30
db #c5,#30,#c7,#30,#c9,#30,#cb,#30
db #cc,#30,#ce,#30,#d0,#30,#c0,#30
db #c2,#30,#c4,#30,#c5,#30,#c7,#30
db #c9,#30,#cb,#30,#cc,#30,#ce,#30
db #d0,#30,#c2,#30,#c0,#30,#c4,#30
db #c5,#30,#c7,#30,#c9,#30,#cb,#30
db #cc,#30,#ce,#30,#c0,#30,#c2,#30
db #c5,#30,#ff,#c9,#30,#c9,#30,#c9
db #30,#c9,#30,#c9,#30,#49,#30,#02
db #c9,#30,#c9,#30,#49,#30,#02,#c9
db #30,#c9,#30,#49,#30,#02,#49,#30
db #02,#49,#30,#02,#49,#30,#02,#49
db #30,#02,#49,#30,#02,#49,#30,#02
db #49,#30,#02,#49,#30,#02,#49,#30
db #02,#49,#30,#02,#49,#30,#02,#49
db #30,#02,#49,#30,#02,#49,#30,#03
db #49,#30,#03,#49,#30,#03,#49,#30
db #04,#49,#30,#04,#49,#30,#04,#49
db #30,#02,#ff,#47,#3b,#60,#47,#30
db #06,#47,#3b,#61,#47,#30,#06,#47
db #3b,#62,#47,#30,#06,#47,#3b,#63
db #47,#30,#06,#47,#3b,#64,#47,#3b
db #65,#47,#3b,#46,#ff,#4b,#60,#03
db #4c,#60,#03,#4b,#60,#04,#4c,#60
db #04,#4b,#60,#04,#4c,#60,#04,#4b
db #60,#04,#4c,#60,#04,#4b,#60,#04
db #4c,#60,#04,#4b,#60,#04,#4c,#60
db #05,#4b,#60,#05,#4c,#60,#05,#4b
db #60,#05,#4c,#60,#02,#ff,#cc,#90
db #cb,#90,#cb,#90,#cc,#90,#cb,#90
db #cb,#90,#cc,#90,#cb,#90,#cb,#90
db #ce,#90,#cb,#90,#cb,#90,#d0,#90
db #cb,#90,#cb,#90,#ce,#90,#cb,#90
db #cb,#90,#cc,#90,#cb,#90,#cb,#90
db #cc,#90,#cb,#90,#cb,#90,#ce,#90
db #cb,#90,#cb,#90,#d0,#90,#cb,#90
db #cb,#90,#50,#90,#02,#4b,#9b,#20
db #4b,#9b,#20,#4b,#9b,#41,#4b,#9b
db #41,#4b,#9b,#52,#4b,#9b,#f3,#ff
db #c0,#10,#c0,#10,#c0,#10,#c0,#10
db #39,#10,#04,#3b,#10,#04,#3b,#10
db #04,#3d,#10,#02,#3d,#10,#02,#3d
db #10,#04,#c5,#10,#c7,#10,#c5,#10
db #c5,#10,#47,#10,#04,#49,#10,#03
db #49,#10,#03,#c9,#10,#47,#10,#05
db #45,#10,#02,#47,#10,#05,#47,#10
db #04,#45,#10,#03,#44,#10,#06,#ff
db #4b,#80,#02,#4b,#80,#02,#4b,#80
db #02,#4b,#80,#02,#cb,#80,#cb,#80
db #cb,#80,#4b,#80,#02,#cb,#80,#4b
db #80,#02,#4b,#80,#02,#4b,#80,#02
db #4b,#80,#02,#cb,#80,#4b,#80,#02
db #cb,#80,#cb,#80,#cb,#80,#4b,#80
db #02,#cb,#80,#4b,#80,#02,#49,#80
db #02,#49,#80,#02,#c9,#80,#c9,#80
db #49,#80,#02,#c9,#80,#c9,#80,#c9
db #80,#49,#80,#02,#c9,#80,#49,#80
db #02,#47,#80,#02,#47,#80,#02,#47
db #80,#03,#c7,#80,#c7,#80,#47,#80
db #02,#c7,#80,#c7,#80,#47,#80,#02
db #ff,#cb,#60,#cb,#60,#cc,#60,#cc
db #60,#cc,#60,#c9,#60,#c9,#60,#cb
db #60,#cb,#60,#cb,#60,#cc,#60,#cc
db #60,#c9,#60,#c9,#60,#c9,#60,#cb
db #60,#cb,#60,#cc,#60,#cc,#60,#cc
db #60,#c9,#60,#c9,#60,#cb,#60,#cb
db #60,#cb,#60,#cc,#60,#cc,#60,#c9
db #60,#c9,#60,#c9,#60,#cb,#60,#cb
db #60,#cc,#60,#cb,#60,#c9,#60,#cb
db #60,#cc,#60,#c9,#60,#c9,#60,#c9
db #60,#cb,#60,#cb,#60,#cc,#60,#cc
db #60,#cc,#60,#c9,#60,#c9,#60,#cb
db #60,#cb,#60,#cb,#60,#cc,#60,#cc
db #60,#c9,#60,#c9,#60,#c9,#60,#cb
db #60,#c9,#60,#cc,#60,#cc,#60,#cc
db #60,#c9,#60,#c9,#60,#cc,#60,#cc
db #60,#ff


org #4000
jp l4009	; Dedicated to camel
jp l409d
jp l4081
.l4009
xor a
ld hl,l45b4
call l407a
ld hl,l45e2
call l407a
ld hl,l4610
call l407a
ld ix,l45b0
ld iy,l463a
ld de,#002e
ld b,#03
.l4029
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l4029
ld hl,l44c9
ld (hl),#06
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l44c5),hl
ld (l44c7),hl
ld a,#0c
ld c,d
call l44a5
ld a,#0d
ld c,d
jp l44a5
.l407a
ld b,#2a
.l407c
ld (hl),a
inc hl
djnz l407c
ret
.l4081
ld a,#07
ld c,#3f
call l44a5
ld a,#08
ld c,#00
call l44a5
ld a,#09
ld c,#00
call l44a5
ld a,#0a
ld c,#00
jp l44a5
.l409d
ld hl,l44cb
dec (hl)
ld ix,l45b0
ld bc,l45be
call l413f
ld ix,l45de
ld bc,l45ec
call l413f
ld ix,l460c
ld bc,l461a
call l413f
ld hl,l44c4
ld de,l44cb
ld b,#06
call l411c
ld b,#07
call l411c
ld b,#0b
call l411c
ld b,#0d
call l411c
ld de,l44cb
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l45cf
call l40f5
ld hl,l45fd
call l40f5
ld hl,l462b
.l40f5
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l410a
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l410a
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l411c
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l44a5
.l4127
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l44a5
.l413f
ld a,(l44cb)
or a
jp nz,l41f7
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l41f7
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l4127
or a
jp z,l41ec
ld r,a
and #7f
cp #10
jr c,l41c7
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l433f
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l41a0
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l41a0
rrca
ld c,a
ld hl,l4640
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l41bf
ld (ix+#1e),b
.l41bf
ld a,i
pop hl
ld d,b
and #0f
jr z,l41e0
.l41c7
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l44d0
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l41e0
ld a,d
or a
jr nz,l41ee
ld a,r
bit 7,a
ld a,#01
jr nz,l41ee
.l41ec
ld a,(hl)
inc hl
.l41ee
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l41f7
ld a,(ix+#17)
or a
jr nz,l420d
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l420d
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l4223
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l4223
ld a,(ix+#0d)
or a
jr z,l4231
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l424f
.l4231
ld a,(ix+#1a)
or a
jp z,l4256
ld c,a
cp #03
jr nz,l423e
xor a
.l423e
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l424f
ld a,(ix+#18)
dec c
jr z,l424f
ld a,(ix+#19)
.l424f
add (ix+#07)
ld b,d
call l433f
.l4256
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l427e
dec (ix+#1b)
jr nz,l427e
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l42b6
.l427e
ld a,(ix+#29)
or a
jr z,l42b6
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l42ad
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l42a4
ld (ix+#29),#ff
jr l42ad
.l42a4
cp (ix+#2b)
jr nz,l42ad
ld (ix+#29),#01
.l42ad
ld b,d
or a
jp p,l42b3
dec b
.l42b3
ld c,a
jr l42c1
.l42b6
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l42c1
pop hl
bit 7,(ix+#14)
jr z,l42ca
ld h,d
ld l,d
.l42ca
add hl,bc
ld c,l
ld a,(ix+#01)
call l44a5
ld c,h
ld a,(ix+#02)
call l44a5
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l431d
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l430c
dec (ix+#09)
jr nz,l430c
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l4304
xor a
jr l4309
.l4304
cp #10
jr nz,l4309
dec a
.l4309
ld (ix+#1e),a
.l430c
ld a,b
sub (ix+#1e)
jr nc,l4313
xor a
.l4313
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l44a5
.l431d
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l44cc)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l433b
ld l,a
ld a,b
cpl
and h
ld h,a
.l433b
ld (l44cc),hl
ret
.l433f
ld hl,l44ee
cp #61
jr nc,l4349
add a
ld c,a
add hl,bc
.l4349
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l4353
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l4478
ld (ix+#1e),a
jp l41e0
.l4365
dec b
.l4366
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l4371
neg
.l4371
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l41e0
.l4387
dec b
jr l438b
.l438a
inc b
.l438b
call l4478
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l41e0
.l439a
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l445d
.l43ab
ld a,(hl)
inc hl
or a
jr z,l43cd
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l43cd
ld (ix+#29),a
jp l41e0
.l43d3
dec hl
ld a,(hl)
and #0f
ld (l44cf),a
inc hl
ld a,(hl)
inc hl
ld (l44ce),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l41e0
.l43ed
ld a,(hl)
or a
jr z,l43fe
call l447a
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l41e0
.l43fe
ld hl,#0101
ld (l44ca),hl
jp l41e0
.l4407
call l4478
ld (ix+#1e),a
jp l41e0
.l4410
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l4489
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l4489
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l41e0
.l4432
ld a,(hl)
inc hl
ld (l44c9),a
jp l41e0
.l443a
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l41e0
.l4459
call l4478
add a
.l445d
ld b,#00
ld c,a
push hl
ld hl,l46c0
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l41e0
.l4478
ld a,(hl)
inc hl
.l447a
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l4489
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l4640
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l44a5
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l44c4
ret
.l44cc equ $ + 7
.l44cb equ $ + 6
.l44ca equ $ + 5
.l44c9 equ $ + 4
.l44c7 equ $ + 2
.l44c5
db #00,#00,#00,#00,#00,#00,#00,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
db #38,#00,#00
.l44d0
dw l4353,l4366,l4365,l438a
dw l4387,l439a,l43ab,l43d3
dw l43ed,l43d3,l4407,l4410
dw l4432,l443a,l4459
.l44ee
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l45b4 equ $ + 4
.l45b0
db #08,#00,#01,#08,#00,#00,#00,#00
.l45be equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l45e2 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l4610
db #00,#00,#00,#00,#00,#00,#00,#00
.l461a equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
db #00,#00,#a0,#4b,#c4,#4b,#e8,#4b
.l4640
db #d2,#ff,#d2,#47,#12,#48,#60,#48
db #d2,#ff,#52,#48,#92,#48,#40,#47
db #e0,#46,#20,#47,#40,#47,#00,#00
db #d2,#ff,#32,#49,#72,#49,#c0,#49
db #60,#47,#a0,#47,#40,#47,#20,#00
db #60,#47,#c0,#47,#e0,#47,#00,#00
db #00,#48,#40,#48,#60,#48,#00,#00
db #80,#48,#c0,#48,#40,#47,#00,#00
db #e0,#48,#20,#49,#40,#49,#00,#00
db #60,#49,#a0,#49,#c0,#49,#80,#00
db #e0,#49,#20,#4a,#40,#4a,#c0,#00
db #60,#4a,#a0,#4a,#c0,#4a,#00,#00
db #60,#47,#e0,#4a,#00,#4b,#00,#00
db #20,#4b,#60,#4b,#80,#4b,#00,#00
db #a6,#ff,#d2,#ff,#d1,#ff,#fe,#ff
db #d1,#ff,#d2,#ff,#d3,#ff,#02,#00
.l46c0
db #d3,#ff,#d2,#ff,#d1,#ff,#d0,#ff
db #d1,#ff,#d2,#ff,#d3,#ff,#d4,#ff
db #d3,#ff,#d2,#ff,#d1,#ff,#d0,#ff
db #d1,#ff,#d2,#ff,#d3,#ff,#d4,#ff
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#0a,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#05,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#40,#00,#80,#00,#c0,#00
db #00,#01,#40,#01,#80,#01,#c0,#01
db #00,#02,#40,#02,#80,#02,#c0,#02
db #00,#03,#40,#03,#80,#03,#c0,#03
db #00,#04,#40,#04,#80,#04,#c0,#04
db #00,#05,#40,#05,#80,#05,#c0,#05
db #00,#06,#40,#06,#80,#06,#c0,#06
db #00,#07,#40,#07,#80,#07,#c0,#07
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#09,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#03,#00
db #00,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#08,#08
db #07,#07,#06,#06,#05,#05,#04,#04
db #03,#03,#02,#02,#01,#01,#00,#00
db #00,#00,#30,#00,#60,#00,#90,#00
db #c0,#00,#f0,#00,#20,#01,#50,#01
db #80,#01,#b0,#01,#e0,#01,#10,#02
db #40,#02,#70,#02,#a0,#02,#d0,#02
db #00,#03,#20,#03,#40,#03,#60,#03
db #70,#03,#80,#03,#90,#03,#a0,#03
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
db #0a,#0a,#09,#09,#08,#07,#07,#06
db #06,#05,#05,#04,#04,#03,#03,#02
db #02,#00,#00,#00,#00,#00,#00,#00
db #04,#06,#07,#09,#0c,#11,#17,#1d
db #15,#10,#0c,#09,#06,#05,#04,#04
db #03,#03,#03,#02,#02,#02,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #38,#00,#60,#00,#b0,#00,#18,#01
db #48,#01,#80,#01,#c8,#01,#10,#02
db #58,#02,#b0,#02,#00,#00,#00,#80
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
db #06,#03,#01,#00,#80,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#06,#06,#05,#04,#04,#03,#02
db #01,#00,#80,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#80,#00,#40,#01,#a0,#01
db #40,#02,#e8,#02,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#0c,#4c,#00,#74,#4c,#00,#dc
db #4c,#00,#44,#4d,#00,#6f,#4d,#00
db #9a,#4d,#00,#c1,#4d,#00,#3d,#4e
db #00,#b8,#4e,#00,#b8,#4e,#00,#2d
db #4f,#80,#a0,#4b,#00,#2d,#4f,#00
db #2d,#4f,#00,#30,#4f,#00,#2d,#4f
db #00,#2d,#4f,#00,#2d,#4f,#00,#a1
db #4f,#00,#d2,#4f,#00,#3e,#50,#00
db #3e,#50,#00,#2d,#4f,#80,#c4,#4b
db #00,#2d,#4f,#00,#5f,#50,#00,#90
db #50,#00,#2d,#4f,#00,#2d,#4f,#00
db #2d,#4f,#00,#01,#51,#00,#82,#51
db #00,#2d,#4f,#00,#e3,#51,#00,#2d
db #4f,#80,#e8,#4b,#44,#20,#02,#44
db #20,#02,#44,#20,#02,#c4,#20,#44
db #20,#02,#42,#20,#02,#44,#20,#02
db #c4,#20,#44,#20,#02,#42,#20,#02
db #c4,#20,#44,#20,#02,#c4,#20,#44
db #20,#02,#c2,#20,#40,#20,#02,#bd
db #20,#3b,#20,#03,#39,#20,#02,#3b
db #20,#02,#39,#20,#02,#3b,#20,#02
db #3d,#20,#02,#3d,#20,#02,#3d,#20
db #02,#bd,#20,#bd,#20,#3d,#20,#02
db #bf,#20,#bf,#20,#3f,#20,#02,#bf
db #20,#bf,#20,#3d,#20,#02,#bf,#20
db #bf,#20,#3d,#20,#02,#bd,#20,#bb
db #20,#bf,#20,#ff,#5c,#20,#02,#5c
db #20,#02,#5c,#20,#02,#dc,#20,#5c
db #20,#02,#5a,#20,#02,#5c,#20,#02
db #dc,#20,#5c,#20,#02,#5a,#20,#02
db #dc,#20,#5c,#20,#02,#dc,#20,#5c
db #20,#02,#da,#20,#58,#20,#02,#d5
db #20,#53,#20,#03,#51,#20,#02,#53
db #20,#02,#51,#20,#02,#53,#20,#02
db #55,#20,#02,#55,#20,#02,#55,#20
db #02,#d5,#20,#d5,#20,#55,#20,#02
db #d7,#20,#d7,#20,#57,#20,#02,#d7
db #20,#d7,#20,#55,#20,#02,#d7,#20
db #d7,#20,#55,#20,#02,#d5,#20,#d3
db #20,#d7,#20,#ff,#2c,#20,#02,#2c
db #20,#02,#2c,#20,#02,#ac,#20,#2c
db #20,#02,#2a,#20,#02,#2c,#20,#02
db #ac,#20,#2c,#20,#02,#2a,#20,#02
db #ac,#20,#2c,#20,#02,#ac,#20,#2c
db #20,#02,#aa,#20,#28,#20,#02,#b1
db #20,#2f,#20,#03,#39,#20,#02,#2f
db #20,#02,#2d,#20,#02,#3b,#20,#02
db #31,#20,#02,#31,#20,#02,#31,#20
db #02,#b1,#20,#b1,#20,#31,#20,#02
db #b3,#20,#b3,#20,#33,#20,#02,#b3
db #20,#b3,#20,#31,#20,#02,#b3,#20
db #b3,#20,#31,#20,#02,#b1,#20,#af
db #20,#b3,#20,#ff,#3f,#40,#03,#3f
db #40,#03,#40,#40,#06,#3d,#40,#0b
db #40,#40,#03,#40,#40,#03,#3f,#40
db #06,#42,#40,#0b,#3d,#40,#03,#3d
db #40,#03,#40,#40,#03,#40,#40,#03
db #3d,#40,#02,#3d,#40,#04,#ff,#44
db #40,#06,#42,#40,#06,#44,#40,#03
db #44,#40,#03,#42,#40,#06,#44,#40
db #06,#3f,#40,#06,#40,#40,#03,#40
db #40,#03,#3f,#40,#03,#3d,#40,#03
db #3d,#40,#06,#42,#40,#06,#3b,#40
db #04,#ff,#00,#02,#42,#40,#03,#3d
db #40,#06,#42,#40,#0a,#3b,#40,#03
db #3b,#40,#05,#3d,#40,#03,#3d,#40
db #06,#42,#40,#08,#3b,#40,#03,#3b
db #40,#03,#40,#40,#06,#38,#40,#06
db #ff,#c2,#50,#bb,#50,#c4,#50,#c4
db #50,#c2,#50,#bb,#50,#c2,#50,#c2
db #50,#c2,#50,#c2,#50,#c0,#50,#c2
db #50,#c0,#50,#c0,#50,#bf,#50,#bb
db #50,#bf,#50,#bf,#50,#bf,#50,#bf
db #50,#3d,#50,#02,#bd,#50,#bd,#50
db #bd,#50,#bd,#50,#bd,#50,#bb,#50
db #bd,#50,#bb,#50,#bb,#50,#bb,#50
db #c2,#50,#b9,#50,#b9,#50,#38,#50
db #02,#39,#50,#02,#b9,#50,#b9,#50
db #3b,#50,#02,#bb,#50,#bb,#50,#bb
db #50,#bb,#50,#bb,#50,#bd,#50,#c2
db #50,#bd,#50,#bd,#50,#bf,#50,#40
db #50,#02,#c2,#50,#bb,#50,#c2,#50
db #c2,#50,#c2,#50,#c4,#50,#c4,#50
db #c4,#50,#c4,#50,#ff,#c4,#70,#c4
db #70,#c2,#70,#c4,#70,#c4,#70,#c2
db #70,#c4,#70,#c4,#70,#c0,#70,#c0
db #70,#c4,#70,#c4,#70,#bf,#70,#c2
db #70,#c2,#70,#bd,#70,#c4,#70,#c4
db #70,#bf,#70,#c2,#70,#c2,#70,#c0
db #70,#c0,#70,#c4,#70,#c4,#70,#bf
db #70,#c2,#70,#c4,#70,#c4,#70,#c2
db #70,#bd,#70,#bd,#70,#bf,#70,#bb
db #70,#bb,#70,#c0,#70,#bd,#70,#bd
db #70,#bf,#70,#bf,#70,#c0,#70,#c2
db #70,#c2,#70,#c0,#70,#c0,#70,#c2
db #70,#42,#70,#02,#c4,#70,#44,#70
db #02,#c2,#70,#42,#70,#02,#c2,#70
db #42,#70,#02,#c0,#70,#40,#70,#02
db #c2,#70,#42,#70,#02,#c2,#70,#ff
db #42,#c0,#02,#c2,#c0,#42,#c0,#02
db #c2,#c0,#c2,#c0,#c2,#c0,#c2,#c0
db #c2,#c0,#c2,#c0,#c2,#c0,#c2,#c0
db #c2,#c0,#42,#c0,#02,#c2,#c0,#42
db #c0,#02,#c2,#c0,#c2,#c0,#c2,#c0
db #c2,#c0,#c2,#c0,#c2,#c0,#c2,#c0
db #c2,#c0,#c2,#c0,#42,#c0,#02,#42
db #c0,#02,#42,#c0,#02,#c2,#c0,#c2
db #c0,#c2,#c0,#c2,#c0,#c2,#c0,#c2
db #c0,#c2,#c0,#c2,#c0,#c2,#c0,#c2
db #c0,#42,#c0,#02,#42,#c0,#02,#42
db #c0,#02,#c2,#c0,#c2,#c0,#c2,#c0
db #c2,#c0,#c2,#c0,#c2,#c0,#c2,#c0
db #c2,#c0,#42,#c0,#02,#42,#c0,#02
db #c2,#c0,#c0,#c0,#ff,#00,#40,#ff
db #c4,#90,#b8,#a0,#38,#c0,#02,#c4
db #90,#b8,#a0,#38,#c0,#02,#c4,#90
db #b8,#a0,#38,#c0,#02,#c4,#90,#b8
db #a0,#38,#c0,#02,#c4,#90,#b8,#a0
db #38,#c0,#02,#c4,#90,#b8,#a0,#38
db #c0,#02,#c4,#90,#b8,#a0,#38,#c0
db #02,#c4,#90,#b8,#a0,#38,#c0,#02
db #c4,#90,#b8,#a0,#38,#c0,#02,#c4
db #90,#b8,#a0,#38,#c0,#02,#c4,#90
db #b8,#a0,#38,#c0,#02,#c4,#90,#b8
db #a0,#38,#c0,#02,#c4,#90,#b8,#a0
db #38,#c0,#02,#c4,#90,#b8,#a0,#38
db #c0,#02,#c4,#90,#b8,#a0,#38,#c0
db #02,#c4,#90,#b8,#a0,#38,#c0,#02
db #ff,#38,#60,#04,#38,#60,#04,#38
db #60,#04,#38,#60,#04,#38,#60,#04
db #38,#60,#04,#38,#60,#04,#44,#60
db #04,#38,#60,#04,#38,#60,#04,#38
db #60,#04,#38,#60,#04,#38,#60,#04
db #38,#60,#04,#38,#60,#04,#44,#60
db #04,#ff,#44,#20,#02,#b8,#20,#44
db #20,#02,#b8,#20,#42,#20,#02,#b8
db #20,#44,#20,#02,#b8,#20,#44,#20
db #02,#b8,#20,#40,#20,#02,#b8,#20
db #44,#20,#02,#b8,#20,#44,#20,#02
db #b8,#20,#3f,#20,#02,#b8,#20,#44
db #20,#02,#b8,#20,#3d,#20,#02,#b8
db #20,#44,#20,#02,#b8,#20,#3b,#20
db #02,#b8,#20,#44,#20,#02,#b9,#20
db #39,#20,#02,#b9,#20,#44,#20,#02
db #b9,#20,#38,#20,#02,#b9,#20,#36
db #20,#02,#b9,#20,#34,#20,#02,#b8
db #20,#34,#20,#02,#b8,#20,#36,#20
db #02,#b8,#20,#b9,#20,#ff,#38,#d0
db #02,#b4,#b0,#34,#b0,#0d,#b4,#b0
db #34,#b0,#0d,#38,#d0,#02,#38,#d0
db #0e,#38,#d0,#02,#38,#d0,#0c,#38
db #d0,#02,#b4,#b0,#b4,#b0,#ff,#3b
db #60,#04,#44,#60,#04,#44,#60,#04
db #40,#60,#04,#40,#60,#04,#42,#60
db #04,#3f,#60,#04,#44,#60,#04,#3d
db #60,#04,#44,#60,#04,#44,#60,#04
db #42,#60,#04,#3d,#60,#04,#44,#60
db #04,#42,#60,#04,#3d,#60,#04,#ff
db #c4,#80,#c4,#80,#44,#80,#02,#c0
db #80,#c0,#80,#3f,#80,#02,#c4,#80
db #c4,#80,#44,#80,#02,#c0,#80,#c0
db #80,#3f,#80,#02,#c4,#80,#c4,#80
db #44,#80,#02,#c0,#80,#c0,#80,#3f
db #80,#02,#c4,#80,#c4,#80,#44,#80
db #02,#c0,#80,#c0,#80,#3f,#80,#02
db #c4,#80,#c4,#80,#44,#80,#02,#c0
db #80,#c0,#80,#3f,#80,#02,#c4,#80
db #c4,#80,#44,#80,#02,#c0,#80,#c0
db #80,#3f,#80,#02,#c4,#80,#c4,#80
db #44,#80,#02,#c0,#80,#c0,#80,#3f
db #80,#02,#c4,#80,#c4,#80,#44,#80
db #02,#c0,#80,#c0,#80,#3f,#80,#02
db #ff,#c4,#70,#c4,#70,#c2,#70,#c4
db #70,#c4,#70,#c2,#70,#c4,#70,#c4
db #70,#c2,#70,#c2,#70,#c4,#70,#c4
db #70,#c2,#70,#c4,#70,#c4,#70,#c2
db #70,#c4,#70,#c4,#70,#c2,#70,#c4
db #70,#c4,#70,#c2,#70,#c2,#70,#c2
db #70,#c0,#70,#c0,#70,#c4,#70,#c4
db #70,#c2,#70,#c0,#70,#c0,#70,#c2
db #70,#c4,#70,#c4,#70,#c2,#70,#c2
db #70,#c0,#70,#c0,#70,#c0,#70,#c4
db #70,#c2,#70,#c4,#70,#c2,#70,#c2
db #70,#c2,#70,#c4,#70,#c4,#70,#c4
db #70,#c2,#70,#c2,#70,#c2,#70,#c2
db #70,#c2,#70,#c4,#70,#c4,#70,#c4
db #70,#c2,#70,#c2,#70,#c0,#70,#c0
db #70,#bf,#70,#bf,#70,#c4,#70,#c4
db #70,#ff,#38,#60,#02,#39,#c0,#02
db #38,#60,#02,#39,#c0,#02,#38,#60
db #02,#39,#c0,#02,#38,#60,#02,#39
db #c0,#02,#38,#60,#02,#39,#c0,#02
db #38,#60,#02,#39,#c0,#02,#38,#60
db #02,#39,#c0,#02,#38,#60,#02,#39
db #c0,#02,#38,#60,#02,#39,#c0,#02
db #38,#60,#02,#39,#c0,#02,#38,#60
db #02,#39,#c0,#02,#38,#60,#02,#39
db #c0,#02,#38,#60,#02,#39,#c0,#02
db #38,#60,#02,#39,#c0,#02,#38,#60
db #02,#39,#c0,#02,#38,#60,#02,#39
db #c0,#02,#ff,#c4,#50,#c2,#50,#c0
db #50,#bf,#50,#c4,#50,#c2,#50,#c0
db #50,#bf,#50,#c4,#50,#c2,#50,#c0
db #50,#bf,#50,#c4,#50,#c2,#50,#c0
db #50,#bf,#50,#c4,#50,#c2,#50,#c0
db #50,#bf,#50,#c4,#50,#c2,#50,#c0
db #50,#bf,#50,#c4,#50,#c2,#50,#c0
db #50,#bf,#50,#c4,#50,#c2,#50,#c0
db #50,#3f,#50,#03,#c4,#50,#c2,#50
db #c0,#50,#3f,#50,#03,#c4,#50,#c2
db #50,#c0,#50,#bf,#50,#c4,#50,#c2
db #50,#c0,#50,#bf,#50,#c4,#50,#c2
db #50,#c0,#50,#bf,#50,#c4,#50,#c2
db #50,#c0,#50,#bf,#50,#c4,#50,#c2
db #50,#c0,#50,#bf,#50,#c4,#50,#c2
db #50,#c0,#50,#bf,#50,#ff
nop
jp l5268	; War of freax
jp l52fc
jp l52e0
.l5268
xor a
ld hl,l5813
call l52d9
ld hl,l5841
call l52d9
ld hl,l586f
call l52d9
ld ix,l580f
ld iy,l5899
ld de,#002e
ld b,#03
.l5288
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l5288
ld hl,l5728
ld (hl),#05
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l5724),hl
ld (l5726),hl
ld a,#0c
ld c,d
call l5704
ld a,#0d
ld c,d
jp l5704
.l52d9
ld b,#2a
.l52db
ld (hl),a
inc hl
djnz l52db
ret
.l52e0
ld a,#07
ld c,#3f
call l5704
ld a,#08
ld c,#00
call l5704
ld a,#09
ld c,#00
call l5704
ld a,#0a
ld c,#00
jp l5704
.l52fc
ld hl,l572a
dec (hl)
ld ix,l580f
ld bc,l581d
call l539e
ld ix,l583d
ld bc,l584b
call l539e
ld ix,l586b
ld bc,l5879
call l539e
ld hl,l5723
ld de,l572a
ld b,#06
call l537b
ld b,#07
call l537b
ld b,#0b
call l537b
ld b,#0d
call l537b
ld de,l572a
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l582e
call l5354
ld hl,l585c
call l5354
ld hl,l588a
.l5354
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l5369
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l5369
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l537b
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l5704
.l5386
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l5704
.l539e
ld a,(l572a)
or a
jp nz,l5456
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l5456
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l5386
or a
jp z,l544b
ld r,a
and #7f
cp #10
jr c,l5426
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #ff
add (ix+#24)
ld (ix+#07),a
ld b,d
call l559e
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l53ff
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l53ff
rrca
ld c,a
ld hl,l589f
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l541e
ld (ix+#1e),b
.l541e
ld a,i
pop hl
ld d,b
and #0f
jr z,l543f
.l5426
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l572f
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l543f
ld a,d
or a
jr nz,l544d
ld a,r
bit 7,a
ld a,#01
jr nz,l544d
.l544b
ld a,(hl)
inc hl
.l544d
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l5456
ld a,(ix+#17)
or a
jr nz,l546c
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l546c
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l5482
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l5482
ld a,(ix+#0d)
or a
jr z,l5490
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l54ae
.l5490
ld a,(ix+#1a)
or a
jp z,l54b5
ld c,a
cp #03
jr nz,l549d
xor a
.l549d
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l54ae
ld a,(ix+#18)
dec c
jr z,l54ae
ld a,(ix+#19)
.l54ae
add (ix+#07)
ld b,d
call l559e
.l54b5
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l54dd
dec (ix+#1b)
jr nz,l54dd
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l5515
.l54dd
ld a,(ix+#29)
or a
jr z,l5515
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l550c
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l5503
ld (ix+#29),#ff
jr l550c
.l5503
cp (ix+#2b)
jr nz,l550c
ld (ix+#29),#01
.l550c
ld b,d
or a
jp p,l5512
dec b
.l5512
ld c,a
jr l5520
.l5515
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l5520
pop hl
bit 7,(ix+#14)
jr z,l5529
ld h,d
ld l,d
.l5529
add hl,bc
ld c,l
ld a,(ix+#01)
call l5704
ld c,h
ld a,(ix+#02)
call l5704
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l557c
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l556b
dec (ix+#09)
jr nz,l556b
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l5563
xor a
jr l5568
.l5563
cp #10
jr nz,l5568
dec a
.l5568
ld (ix+#1e),a
.l556b
ld a,b
sub (ix+#1e)
jr nc,l5572
xor a
.l5572
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l5704
.l557c
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l572b)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l559a
ld l,a
ld a,b
cpl
and h
ld h,a
.l559a
ld (l572b),hl
ret
.l559e
ld hl,l574d
cp #61
jr nc,l55a8
add a
ld c,a
add hl,bc
.l55a8
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l55b2
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l56d7
ld (ix+#1e),a
jp l543f
.l55c4
dec b
.l55c5
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l55d0
neg
.l55d0
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l543f
.l55e6
dec b
jr l55ea
.l55e9
inc b
.l55ea
call l56d7
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l543f
.l55f9
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l56bc
.l560a
ld a,(hl)
inc hl
or a
jr z,l562c
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l562c
ld (ix+#29),a
jp l543f
.l5632
dec hl
ld a,(hl)
and #0f
ld (l572e),a
inc hl
ld a,(hl)
inc hl
ld (l572d),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l543f
.l564c
ld a,(hl)
or a
jr z,l565d
call l56d9
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l543f
.l565d
ld hl,#0101
ld (l5729),hl
jp l543f
.l5666
call l56d7
ld (ix+#1e),a
jp l543f
.l566f
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l56e8
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l56e8
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l543f
.l5691
ld a,(hl)
inc hl
ld (l5728),a
jp l543f
.l5699
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l543f
.l56b8
call l56d7
add a
.l56bc
ld b,#00
ld c,a
push hl
ld hl,l591f
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l543f
.l56d7
ld a,(hl)
inc hl
.l56d9
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l56e8
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l589f
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l5704
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l5723
ret
.l572b equ $ + 7
.l572a equ $ + 6
.l5729 equ $ + 5
.l5728 equ $ + 4
.l5726 equ $ + 2
.l5724
db #00,#00,#00,#00,#00,#00,#00,#00
.l572e equ $ + 2
.l572d equ $ + 1
db #38,#00,#00
.l572f
dw l55b2,l55c5,l55c4,l55e9
dw l55e6,l55f9,l560a,l5632
dw l564c,l5632,l5666,l566f
dw l5691,l5699,l56b8
.l574d
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l5813 equ $ + 4
.l580f
db #08,#00,#01,#08,#00,#00,#00,#00
.l581d equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l582e equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l583d equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l5841 equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l584b equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l585c equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l586b equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l586f
db #00,#00,#00,#00,#00,#00,#00,#00
.l5879 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l588a equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l5899 equ $ + 2
db #00,#00,#1f,#5e,#5e,#5e,#9d,#5e
.l589f
db #31,#12,#af,#6c,#ef,#6c,#de,#5a
db #31,#12,#2f,#6d,#6f,#6d,#9e,#59
db #3f,#59,#7f,#59,#9f,#59,#00,#00
db #bf,#59,#ff,#59,#9f,#59,#20,#00
db #bf,#59,#1f,#5a,#9f,#59,#20,#00
db #bf,#59,#3f,#5a,#5f,#5a,#00,#00
db #7f,#5a,#bf,#5a,#df,#5a,#00,#00
db #ff,#5a,#3f,#5b,#9f,#59,#00,#00
db #5f,#5b,#9f,#5b,#bf,#5b,#00,#00
db #df,#5b,#1f,#5c,#3f,#5c,#80,#00
db #5f,#5c,#9f,#5c,#bf,#5c,#c0,#00
db #df,#5c,#1f,#5d,#3f,#5d,#00,#00
db #bf,#59,#5f,#5d,#7f,#5d,#00,#00
db #9f,#5d,#df,#5d,#ff,#5d,#00,#00
db #63,#24,#31,#12,#30,#12,#fe,#ff
db #30,#12,#31,#12,#32,#12,#02,#00
.l591f
db #32,#12,#31,#12,#30,#12,#2f,#12
db #30,#12,#31,#12,#32,#12,#33,#12
db #32,#12,#31,#12,#30,#12,#2f,#12
db #30,#12,#31,#12,#32,#12,#33,#12
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
db #00,#00,#01,#00,#02,#00,#01,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0d,#0c,#0c,#0b,#0b,#0b,#0b
db #0b,#0a,#0a,#0a,#0a,#0a,#0b,#0b
db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#00
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#0a,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#05,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#40,#00,#80,#00,#c0,#00
db #00,#01,#40,#01,#80,#01,#c0,#01
db #00,#02,#40,#02,#80,#02,#c0,#02
db #00,#03,#40,#03,#80,#03,#c0,#03
db #00,#04,#40,#04,#80,#04,#c0,#04
db #00,#05,#40,#05,#80,#05,#c0,#05
db #00,#06,#40,#06,#80,#06,#c0,#06
db #00,#07,#40,#07,#80,#07,#c0,#07
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#09,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#03,#00
db #00,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#08,#08
db #07,#07,#06,#06,#05,#05,#04,#04
db #03,#03,#02,#02,#01,#01,#00,#00
db #00,#00,#30,#00,#60,#00,#90,#00
db #c0,#00,#f0,#00,#20,#01,#50,#01
db #80,#01,#b0,#01,#e0,#01,#10,#02
db #40,#02,#70,#02,#a0,#02,#d0,#02
db #00,#03,#20,#03,#40,#03,#60,#03
db #70,#03,#80,#03,#90,#03,#a0,#03
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
db #0a,#0a,#09,#09,#08,#07,#07,#06
db #06,#05,#05,#04,#04,#03,#03,#02
db #02,#00,#00,#00,#00,#00,#00,#00
db #04,#06,#07,#09,#0c,#11,#17,#1d
db #15,#10,#0c,#09,#06,#05,#04,#04
db #03,#03,#03,#02,#02,#02,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#65,#01,#3e,#01,#00,#00
db #c3,#04,#65,#01,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#06,#07,#07,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #38,#00,#60,#00,#b0,#00,#18,#01
db #48,#01,#80,#01,#c8,#01,#10,#02
db #58,#02,#b0,#02,#00,#00,#00,#80
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
db #06,#03,#01,#00,#80,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#06,#06,#05,#04,#04,#03,#02
db #01,#00,#80,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#80,#00,#40,#01,#a0,#01
db #40,#02,#e8,#02,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#dc,#5e,#00,#dc,#5e,#00,#41
db #5f,#00,#dc,#5e,#00,#41,#5f,#00
db #41,#5f,#00,#a6,#5f,#00,#a6,#5f
db #00,#a6,#5f,#00,#a6,#5f,#00,#dc
db #5e,#00,#a9,#5f,#00,#a9,#5f,#00
db #1c,#60,#00,#a9,#5f,#00,#1c,#60
db #00,#62,#60,#00,#62,#60,#00,#62
db #60,#00,#cb,#60,#80,#1f,#5e,#00
db #ce,#60,#00,#ce,#60,#00,#a6,#5f
db #00,#ce,#60,#00,#e6,#60,#00,#e6
db #60,#00,#a0,#61,#00,#a0,#61,#00
db #f1,#61,#00,#f1,#61,#00,#ce,#60
db #00,#9b,#62,#00,#9b,#62,#00,#e0
db #62,#00,#9b,#62,#00,#e0,#62,#00
db #3a,#63,#00,#3a,#63,#00,#3a,#63
db #00,#cb,#60,#80,#5e,#5e,#00,#a6
db #5f,#00,#a6,#5f,#00,#6b,#63,#00
db #a6,#5f,#00,#6b,#63,#00,#6b,#63
db #00,#6b,#63,#00,#6b,#63,#00,#cd
db #63,#00,#cd,#63,#00,#a6,#5f,#00
db #4e,#64,#00,#4e,#64,#00,#a3,#64
db #00,#4e,#64,#00,#a3,#64,#00,#d7
db #64,#00,#d7,#64,#00,#d7,#64,#00
db #cb,#60,#80,#9d,#5e,#42,#61,#20
db #40,#60,#02,#3f,#60,#02,#3d,#60
db #02,#42,#60,#02,#40,#60,#02,#3f
db #60,#02,#3d,#60,#02,#42,#60,#02
db #40,#60,#02,#3f,#60,#02,#3d,#60
db #02,#42,#60,#02,#40,#60,#02,#3f
db #60,#02,#3d,#60,#02,#42,#60,#02
db #40,#60,#02,#3f,#60,#02,#3d,#60
db #02,#42,#60,#02,#40,#60,#02,#3f
db #60,#02,#3d,#60,#02,#42,#60,#02
db #40,#60,#02,#3f,#60,#02,#3d,#60
db #02,#c2,#60,#c0,#60,#bf,#60,#bd
db #60,#bf,#60,#bf,#60,#c0,#60,#bd
db #60,#ff,#42,#60,#02,#40,#60,#02
db #3f,#60,#02,#3d,#60,#02,#42,#60
db #02,#40,#60,#02,#3f,#60,#02,#3d
db #60,#02,#42,#60,#02,#40,#60,#02
db #3f,#60,#02,#3d,#60,#02,#42,#60
db #02,#40,#60,#02,#3f,#60,#02,#3d
db #60,#02,#42,#60,#02,#40,#60,#02
db #3f,#60,#02,#3d,#60,#02,#42,#60
db #02,#40,#60,#02,#3f,#60,#02,#3d
db #60,#02,#42,#60,#02,#40,#60,#02
db #3f,#60,#02,#3d,#60,#02,#c2,#60
db #c0,#60,#bf,#60,#bd,#60,#bf,#60
db #bf,#60,#c0,#60,#bd,#60,#ff,#fe
db #40,#ff,#b6,#30,#b4,#30,#b6,#30
db #b4,#30,#b6,#30,#34,#30,#02,#44
db #30,#02,#b6,#30,#b4,#30,#b6,#30
db #b4,#30,#b6,#30,#34,#30,#02,#42
db #30,#02,#b6,#30,#b4,#30,#b6,#30
db #b4,#30,#b6,#30,#34,#30,#02,#40
db #30,#02,#b6,#30,#b4,#30,#b6,#30
db #b4,#30,#b6,#30,#34,#30,#02,#3f
db #30,#02,#b6,#30,#b4,#30,#b6,#30
db #b4,#30,#b6,#30,#34,#30,#02,#3d
db #30,#02,#b6,#30,#b4,#30,#b6,#30
db #b4,#30,#b6,#30,#34,#30,#02,#3b
db #30,#02,#b6,#30,#b4,#30,#b6,#30
db #b4,#30,#b6,#30,#34,#30,#02,#39
db #30,#02,#fe,#01,#ff,#44,#41,#50
db #42,#40,#05,#44,#40,#05,#40,#40
db #05,#44,#40,#05,#3f,#40,#05,#44
db #40,#05,#38,#90,#02,#38,#d0,#02
db #42,#60,#02,#b9,#d0,#c2,#60,#3b
db #d0,#02,#c2,#60,#3d,#d0,#02,#42
db #60,#02,#bb,#d0,#40,#60,#02,#b8
db #d0,#40,#60,#02,#bb,#d0,#3f,#60
db #02,#b9,#d0,#3d,#60,#02,#b9,#d0
db #b8,#60,#ff,#20,#d1,#10,#20,#d0
db #02,#a0,#d0,#20,#d0,#02,#a0,#d0
db #a0,#d0,#a0,#d0,#20,#d0,#02,#a0
db #d0,#20,#d0,#03,#ac,#d0,#2c,#d0
db #02,#ac,#d0,#2c,#d0,#02,#ac,#d0
db #ac,#d0,#ac,#d0,#2c,#d0,#02,#ac
db #d0,#2c,#d0,#03,#b8,#d0,#38,#d0
db #02,#b8,#d0,#38,#d0,#02,#b8,#d0
db #b8,#d0,#b8,#d0,#38,#d0,#02,#b8
db #d0,#38,#d0,#03,#ac,#d0,#2c,#d0
db #02,#ac,#d0,#2c,#d0,#02,#ac,#d0
db #ac,#d0,#ac,#d0,#2c,#d0,#02,#ac
db #d0,#2c,#d0,#03,#a0,#d0,#20,#d0
db #02,#a0,#d0,#ff,#00,#40,#ff,#fe
db #06,#36,#51,#80,#42,#c0,#08,#42
db #c0,#08,#42,#c0,#08,#42,#c0,#08
db #42,#c0,#08,#40,#c0,#0a,#ff,#c4
db #2a,#00,#c4,#28,#00,#c2,#28,#00
db #c0,#28,#00,#c0,#2a,#00,#c4,#28
db #00,#c4,#28,#00,#bf,#28,#00,#fe
db #01,#c2,#28,#00,#c2,#28,#00,#bd
db #28,#00,#bd,#2a,#00,#c0,#28,#00
db #c0,#28,#00,#bf,#28,#00,#fe,#01
db #c2,#28,#00,#c2,#28,#00,#bf,#28
db #00,#bf,#2a,#00,#c4,#28,#00,#c4
db #28,#00,#c4,#28,#00,#fe,#01,#bf
db #28,#00,#bf,#28,#00,#c2,#28,#00
db #c2,#2a,#00,#bf,#28,#00,#bf,#28
db #00,#c0,#28,#00,#fe,#01,#c0,#28
db #00,#c2,#28,#00,#c2,#28,#00,#c2
db #2a,#00,#bd,#28,#00,#bd,#28,#00
db #c0,#28,#00,#fe,#01,#c0,#28,#00
db #c0,#28,#00,#c0,#28,#00,#c2,#2a
db #00,#c2,#28,#00,#c2,#28,#00,#c2
db #28,#00,#fe,#01,#c2,#28,#00,#c0
db #28,#00,#bb,#28,#00,#bb,#2a,#00
db #c0,#28,#00,#c0,#28,#00,#bf,#28
db #00,#fe,#01,#bf,#28,#00,#bf,#28
db #00,#bf,#28,#00,#bf,#2a,#00,#c0
db #28,#00,#c0,#28,#00,#bd,#28,#00
db #ff,#44,#71,#20,#42,#70,#02,#40
db #70,#02,#3f,#70,#04,#44,#70,#02
db #42,#70,#02,#40,#70,#02,#3d,#70
db #04,#44,#70,#02,#42,#70,#02,#40
db #70,#02,#3b,#70,#04,#44,#70,#02
db #44,#70,#05,#42,#70,#02,#40,#70
db #02,#3f,#70,#02,#42,#70,#02,#40
db #70,#02,#3d,#70,#02,#42,#70,#02
db #42,#70,#02,#40,#70,#02,#40,#70
db #02,#3d,#70,#02,#3b,#70,#02,#fe
db #03,#ff,#c4,#4a,#00,#c4,#4a,#00
db #c2,#4a,#00,#c2,#4a,#00,#c4,#4a
db #00,#c4,#4a,#00,#c0,#4a,#00,#c0
db #4a,#00,#c4,#4a,#00,#c4,#4a,#00
db #bf,#4a,#00,#bf,#4a,#00,#c4,#40
db #c4,#40,#c2,#40,#c4,#4a,#00,#c4
db #4a,#00,#c2,#4a,#00,#c2,#4a,#00
db #c4,#4a,#00,#c4,#4a,#00,#c0,#4a
db #00,#c0,#4a,#00,#c4,#4a,#00,#c4
db #4a,#00,#bf,#4a,#00,#bf,#4a,#00
db #c4,#40,#c4,#40,#c2,#40,#c4,#4a
db #00,#c4,#4a,#00,#c2,#4a,#00,#c2
db #4a,#00,#c4,#4a,#00,#c4,#4a,#00
db #c0,#4a,#00,#c0,#4a,#00,#c4,#4a
db #00,#c4,#4a,#00,#bf,#4a,#00,#bf
db #4a,#00,#c4,#40,#c4,#40,#c2,#40
db #c4,#4a,#00,#c4,#4a,#00,#c2,#4a
db #00,#c2,#4a,#00,#c4,#4a,#00,#c4
db #4a,#00,#c0,#4a,#00,#c0,#4a,#00
db #c4,#4a,#00,#c4,#4a,#00,#bf,#4a
db #00,#bf,#4a,#00,#c4,#40,#c4,#40
db #42,#40,#05,#ff,#fe,#1b,#c4,#7a
db #0e,#44,#7a,#0e,#02,#42,#7a,#0e
db #03,#c4,#7a,#0e,#44,#7a,#0e,#02
db #42,#7a,#0e,#03,#c4,#7a,#0e,#44
db #7a,#0e,#02,#42,#7a,#0e,#04,#c4
db #7a,#0e,#44,#7a,#0e,#02,#42,#7a
db #0e,#03,#c4,#7a,#0e,#44,#7a,#0e
db #02,#42,#7a,#0e,#03,#c4,#7a,#00
db #44,#7a,#0e,#02,#42,#7a,#0e,#03
db #ff,#fe,#23,#b8,#8a,#0e,#b8,#8a
db #0e,#0a,#0e,#01,#b8,#8a,#0e,#b8
db #8a,#0e,#0a,#0e,#01,#b8,#8a,#0e
db #b8,#8a,#0e,#b8,#8a,#0e,#b8,#8a
db #0e,#b8,#8a,#0e,#b8,#8a,#0e,#0a
db #0e,#01,#b8,#8a,#0e,#b8,#8a,#0e
db #0a,#0e,#01,#b8,#8a,#0e,#b8,#8a
db #0e,#0a,#0e,#01,#b8,#8a,#0e,#b8
db #8a,#0e,#b8,#8a,#0e,#b8,#8a,#0e
db #94,#8a,#0e,#b8,#8a,#0e,#0a,#0e
db #01,#94,#8a,#0e,#94,#8a,#0e,#0a
db #0e,#01,#ff,#44,#81,#40,#42,#80
db #04,#44,#80,#04,#42,#80,#04,#44
db #80,#04,#42,#80,#04,#44,#80,#04
db #42,#80,#04,#44,#80,#04,#42,#80
db #04,#44,#80,#04,#42,#80,#04,#44
db #80,#04,#42,#80,#04,#44,#80,#04
db #42,#80,#04,#ff,#fe,#01,#38,#b0
db #02,#44,#d0,#02,#38,#b0,#02,#45
db #d0,#02,#36,#b0,#02,#45,#d0,#02
db #36,#b0,#02,#45,#d0,#02,#38,#b0
db #02,#45,#d0,#02,#38,#b0,#02,#39
db #d0,#02,#40,#b0,#02,#40,#d0,#02
db #40,#b0,#02,#40,#d0,#02,#44,#b0
db #02,#3b,#d0,#02,#44,#b0,#02,#3b
db #d0,#02,#3f,#b0,#02,#42,#d0,#02
db #3f,#b0,#02,#42,#d0,#02,#44,#b0
db #02,#39,#d0,#02,#44,#b0,#02,#39
db #d0,#02,#3d,#b0,#02,#40,#d0,#02
db #40,#b0,#02,#bf,#d0,#ff,#c4,#d0
db #fe,#01,#e8,#c0,#e8,#c0,#e8,#c0
db #c4,#d0,#fe,#01,#e6,#c0,#e6,#c0
db #e6,#c0,#c4,#d0,#fe,#01,#e6,#c0
db #e4,#c0,#e4,#c0,#c4,#d0,#fe,#01
db #e4,#c0,#ef,#c0,#ef,#c0,#c4,#d0
db #fe,#01,#ef,#c0,#ef,#c0,#e8,#c0
db #c4,#d0,#fe,#01,#e6,#c0,#ef,#c0
db #ef,#c0,#c4,#d0,#fe,#01,#e4,#c0
db #e4,#c0,#e6,#c0,#c4,#d0,#fe,#01
db #ef,#c0,#ef,#c0,#ef,#c0,#c4,#d0
db #fe,#01,#ef,#c0,#e8,#c0,#e8,#c0
db #c4,#d0,#fe,#01,#e8,#c0,#ef,#c0
db #ef,#c0,#c4,#d0,#fe,#01,#ef,#c0
db #ed,#c0,#ed,#c0,#c4,#d0,#fe,#01
db #ef,#c0,#ef,#c0,#ef,#c0,#c4,#d0
db #fe,#01,#e4,#c0,#e6,#c0,#ff,#44
db #60,#06,#c4,#60,#42,#60,#05,#c4
db #60,#c2,#60,#44,#60,#04,#c4,#60
db #c2,#60,#c4,#60,#42,#60,#03,#c4
db #60,#c2,#60,#c4,#60,#c2,#60,#44
db #60,#02,#c4,#60,#c2,#60,#c4,#60
db #c2,#60,#c4,#60,#c2,#60,#c4,#60
db #c4,#60,#c2,#60,#c4,#60,#42,#60
db #02,#c4,#60,#c4,#60,#c2,#60,#44
db #60,#03,#c4,#60,#c2,#60,#44,#60
db #04,#c4,#60,#42,#60,#05,#c4,#60
db #42,#60,#03,#ff,#fe,#23,#c2,#a0
db #38,#c0,#02,#c2,#a0,#38,#c0,#02
db #c2,#a0,#38,#c0,#02,#c2,#a0,#38
db #c0,#02,#c2,#a0,#38,#c0,#02,#c2
db #a0,#38,#c0,#02,#c2,#a0,#38,#c0
db #02,#c2,#a0,#38,#c0,#02,#c2,#a0
db #38,#c0,#02,#c2,#a0,#b8,#c0,#ff
db #fe,#02,#38,#c0,#04,#39,#c0,#04
db #38,#c0,#04,#39,#c0,#04,#38,#c0
db #04,#39,#c0,#04,#38,#c0,#04,#39
db #c0,#04,#38,#c0,#04,#39,#c0,#04
db #38,#c0,#04,#39,#c0,#04,#38,#c0
db #04,#39,#c0,#04,#38,#c0,#04,#39
db #c0,#02,#ff
nop
jp l6514	; Rised
jp l65a8
jp l658c
.l6514
xor a
ld hl,l6abf
call l6585
ld hl,l6aed
call l6585
ld hl,l6b1b
call l6585
ld ix,l6abb
ld iy,l6b45
ld de,#002e
ld b,#03
.l6534
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l6534
ld hl,l69d4
ld (hl),#08
inc hl
ld (hl),#20
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l69d0),hl
ld (l69d2),hl
ld a,#0c
ld c,d
call l69b0
ld a,#0d
ld c,d
jp l69b0
.l6585
ld b,#2a
.l6587
ld (hl),a
inc hl
djnz l6587
ret
.l658c
ld a,#07
ld c,#3f
call l69b0
ld a,#08
ld c,#00
call l69b0
ld a,#09
ld c,#00
call l69b0
ld a,#0a
ld c,#00
jp l69b0
.l65a8
ld hl,l69d6
dec (hl)
ld ix,l6abb
ld bc,l6ac9
call l664a
ld ix,l6ae9
ld bc,l6af7
call l664a
ld ix,l6b17
ld bc,l6b25
call l664a
ld hl,l69cf
ld de,l69d6
ld b,#06
call l6627
ld b,#07
call l6627
ld b,#0b
call l6627
ld b,#0d
call l6627
ld de,l69d6
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#20
ld hl,l6ada
call l6600
ld hl,l6b08
call l6600
ld hl,l6b36
.l6600
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l6615
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l6615
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l6627
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l69b0
.l6632
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l69b0
.l664a
ld a,(l69d6)
or a
jp nz,l6702
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l6702
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l6632
or a
jp z,l66f7
ld r,a
and #7f
cp #10
jr c,l66d2
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l684a
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l66ab
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l66ab
rrca
ld c,a
ld hl,l6b4b
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l66ca
ld (ix+#1e),b
.l66ca
ld a,i
pop hl
ld d,b
and #0f
jr z,l66eb
.l66d2
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l69db
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l66eb
ld a,d
or a
jr nz,l66f9
ld a,r
bit 7,a
ld a,#01
jr nz,l66f9
.l66f7
ld a,(hl)
inc hl
.l66f9
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l6702
ld a,(ix+#17)
or a
jr nz,l6718
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l6718
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l672e
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l672e
ld a,(ix+#0d)
or a
jr z,l673c
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l675a
.l673c
ld a,(ix+#1a)
or a
jp z,l6761
ld c,a
cp #03
jr nz,l6749
xor a
.l6749
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l675a
ld a,(ix+#18)
dec c
jr z,l675a
ld a,(ix+#19)
.l675a
add (ix+#07)
ld b,d
call l684a
.l6761
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l6789
dec (ix+#1b)
jr nz,l6789
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l67c1
.l6789
ld a,(ix+#29)
or a
jr z,l67c1
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l67b8
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l67af
ld (ix+#29),#ff
jr l67b8
.l67af
cp (ix+#2b)
jr nz,l67b8
ld (ix+#29),#01
.l67b8
ld b,d
or a
jp p,l67be
dec b
.l67be
ld c,a
jr l67cc
.l67c1
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l67cc
pop hl
bit 7,(ix+#14)
jr z,l67d5
ld h,d
ld l,d
.l67d5
add hl,bc
ld c,l
ld a,(ix+#01)
call l69b0
ld c,h
ld a,(ix+#02)
call l69b0
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l6828
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l6817
dec (ix+#09)
jr nz,l6817
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l680f
xor a
jr l6814
.l680f
cp #10
jr nz,l6814
dec a
.l6814
ld (ix+#1e),a
.l6817
ld a,b
sub (ix+#1e)
jr nc,l681e
xor a
.l681e
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l69b0
.l6828
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l69d7)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l6846
ld l,a
ld a,b
cpl
and h
ld h,a
.l6846
ld (l69d7),hl
ret
.l684a
ld hl,l69f9
cp #61
jr nc,l6854
add a
ld c,a
add hl,bc
.l6854
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l685e
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l6983
ld (ix+#1e),a
jp l66eb
.l6870
dec b
.l6871
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l687c
neg
.l687c
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l66eb
.l6892
dec b
jr l6896
.l6895
inc b
.l6896
call l6983
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l66eb
.l68a5
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l6968
.l68b6
ld a,(hl)
inc hl
or a
jr z,l68d8
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l68d8
ld (ix+#29),a
jp l66eb
.l68de
dec hl
ld a,(hl)
and #0f
ld (l69da),a
inc hl
ld a,(hl)
inc hl
ld (l69d9),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l66eb
.l68f8
ld a,(hl)
or a
jr z,l6909
call l6985
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l66eb
.l6909
ld hl,#0101
ld (l69d5),hl
jp l66eb
.l6912
call l6983
ld (ix+#1e),a
jp l66eb
.l691b
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l6994
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l6994
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l66eb
.l693d
ld a,(hl)
inc hl
ld (l69d4),a
jp l66eb
.l6945
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l66eb
.l6964
call l6983
add a
.l6968
ld b,#00
ld c,a
push hl
ld hl,l6bcb
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l66eb
.l6983
ld a,(hl)
inc hl
.l6985
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l6994
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l6b4b
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l69b0
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l69cf
ret
.l69d7 equ $ + 7
.l69d6 equ $ + 6
.l69d5 equ $ + 5
.l69d4 equ $ + 4
.l69d2 equ $ + 2
.l69d0
db #00,#00,#00,#00,#00,#00,#00,#00
.l69da equ $ + 2
.l69d9 equ $ + 1
db #38,#00,#00
.l69db
dw l685e,l6871,l6870,l6895
dw l6892,l68a5,l68b6,l68de
dw l68f8,l68de,l6912,l691b
dw l693d,l6945,l6964
.l69f9
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l6abf equ $ + 4
.l6abb
db #08,#00,#01,#08,#00,#00,#00,#00
.l6ac9 equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6ada equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6ae9 equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l6aed equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l6af7 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6b08 equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6b17 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l6b1b
db #00,#00,#00,#00,#00,#00,#00,#00
.l6b25 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6b36 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l6b45 equ $ + 2
db #00,#00,#6b,#6f,#a7,#6f,#e3,#6f
.l6b4b
db #dd,#24,#a8,#91,#e8,#91,#2b,#6d
db #dd,#24,#28,#92,#68,#92,#4b,#6c
db #dd,#24,#88,#92,#c8,#92,#0b,#6e
db #eb,#6b,#2b,#6c,#4b,#6c,#20,#00
db #eb,#6b,#6b,#6c,#4b,#6c,#20,#00
db #eb,#6b,#8b,#6c,#ab,#6c,#00,#00
db #cb,#6c,#0b,#6d,#2b,#6d,#00,#00
db #4b,#6d,#8b,#6d,#4b,#6c,#00,#00
db #ab,#6d,#eb,#6d,#0b,#6e,#00,#00
db #2b,#6e,#6b,#6e,#8b,#6e,#80,#00
db #df,#24,#bb,#49,#ba,#49,#dc,#24
db #ab,#6e,#eb,#6e,#0b,#6f,#00,#00
db #eb,#6b,#2b,#6f,#4b,#6f,#00,#00
db #b8,#49,#b9,#49,#ba,#49,#de,#24
db #bc,#49,#dd,#24,#dd,#24,#00,#00
db #dd,#24,#dd,#24,#dd,#24,#00,#00
.l6bcb
db #dd,#24,#dd,#24,#dd,#24,#dd,#24
db #dd,#24,#dd,#24,#dd,#24,#dd,#24
db #dd,#24,#dd,#24,#dd,#24,#dd,#24
db #dd,#24,#dd,#24,#dd,#24,#dd,#24
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0d,#0c,#0c,#0b,#0b,#0b,#0b
db #0b,#0a,#0a,#0a,#0a,#0a,#0b,#0b
db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#0a,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#05,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#40,#00,#80,#00,#c0,#00
db #00,#01,#40,#01,#80,#01,#c0,#01
db #00,#02,#40,#02,#80,#02,#c0,#02
db #00,#03,#40,#03,#80,#03,#c0,#03
db #00,#04,#40,#04,#80,#04,#c0,#04
db #00,#05,#40,#05,#80,#05,#c0,#05
db #00,#06,#40,#06,#80,#06,#c0,#06
db #00,#07,#40,#07,#80,#07,#c0,#07
db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
db #0a,#0a,#09,#09,#09,#08,#08,#08
db #07,#07,#07,#06,#06,#06,#03,#00
db #00,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #80,#80,#80,#80,#80,#80,#80,#80
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
db #01,#00,#02,#00,#01,#00,#00,#00
db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
db #0b,#0b,#0a,#0a,#09,#09,#08,#08
db #07,#07,#06,#06,#05,#05,#04,#04
db #03,#03,#02,#02,#01,#01,#00,#00
db #00,#00,#30,#00,#60,#00,#90,#00
db #c0,#00,#f0,#00,#20,#01,#50,#01
db #80,#01,#b0,#01,#e0,#01,#10,#02
db #40,#02,#70,#02,#a0,#02,#d0,#02
db #00,#03,#20,#03,#40,#03,#60,#03
db #70,#03,#80,#03,#90,#03,#a0,#03
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
db #0a,#0a,#09,#09,#08,#07,#07,#06
db #06,#05,#05,#04,#04,#03,#03,#02
db #02,#00,#00,#00,#00,#00,#00,#00
db #04,#06,#07,#09,#0c,#11,#17,#1d
db #15,#10,#0c,#09,#06,#05,#04,#04
db #03,#03,#03,#02,#02,#02,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #38,#00,#60,#00,#b0,#00,#18,#01
db #48,#01,#80,#01,#c8,#01,#10,#02
db #58,#02,#b0,#02,#00,#00,#00,#80
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
db #06,#03,#01,#00,#80,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #06,#06,#06,#05,#04,#04,#03,#02
db #01,#00,#80,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0e,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#1f,#70,#00,#4d,#70,#00,#4d
db #70,#00,#4d,#70,#00,#4d,#70,#00
db #7b,#70,#00,#7b,#70,#00,#a9,#70
db #00,#a9,#70,#00,#d7,#70,#00,#d7
db #70,#00,#a9,#70,#00,#d7,#70,#00
db #d7,#70,#00,#07,#71,#00,#07,#71
db #00,#07,#71,#00,#36,#71,#00,#36
db #71,#80,#6b,#6f,#00,#67,#71,#00
db #7b,#70,#00,#7b,#70,#00,#7b,#70
db #00,#7b,#70,#00,#6a,#71,#00,#6a
db #71,#00,#99,#71,#00,#99,#71,#00
db #7b,#70,#00,#7b,#70,#00,#99,#71
db #00,#7b,#70,#00,#7b,#70,#00,#c8
db #71,#00,#c8,#71,#00,#c8,#71,#00
db #f6,#71,#00,#f6,#71,#80,#a7,#6f
db #00,#67,#71,#00,#28,#72,#00,#2b
db #72,#00,#2b,#72,#00,#28,#72,#00
db #28,#72,#00,#28,#72,#00,#50,#72
db #00,#50,#72,#00,#8a,#72,#00,#8a
db #72,#00,#50,#72,#00,#8a,#72,#00
db #8a,#72,#00,#cb,#72,#00,#cb,#72
db #00,#cb,#72,#00,#67,#71,#00,#67
db #71,#80,#e3,#6f,#44,#31,#20,#42
db #30,#02,#40,#30,#02,#3f,#30,#03
db #44,#30,#02,#42,#30,#02,#40,#30
db #02,#3d,#30,#03,#44,#30,#02,#42
db #30,#02,#40,#30,#02,#3f,#30,#02
db #3d,#30,#02,#3f,#30,#02,#3b,#30
db #02,#ff,#44,#30,#02,#42,#30,#02
db #40,#30,#02,#3f,#30,#03,#44,#30
db #02,#42,#30,#02,#40,#30,#02,#3d
db #30,#03,#44,#30,#02,#42,#30,#02
db #40,#30,#02,#3f,#30,#02,#3d,#30
db #02,#3f,#30,#02,#3b,#30,#02,#ff
db #44,#40,#02,#42,#40,#02,#40,#40
db #02,#3f,#40,#03,#44,#40,#02,#42
db #40,#02,#40,#40,#02,#3d,#40,#03
db #44,#40,#02,#42,#40,#02,#40,#40
db #02,#3f,#40,#02,#3d,#40,#02,#3f
db #40,#02,#3b,#40,#02,#ff,#50,#40
db #02,#4e,#40,#02,#4c,#40,#02,#4b
db #40,#03,#50,#40,#02,#4e,#40,#02
db #4c,#40,#02,#49,#40,#03,#50,#40
db #02,#4e,#40,#02,#4c,#40,#02,#4b
db #40,#02,#49,#40,#02,#4b,#40,#02
db #47,#40,#02,#ff,#50,#4a,#af,#02
db #fe,#02,#4c,#40,#02,#57,#40,#02
db #fe,#01,#50,#40,#02,#5a,#40,#02
db #58,#40,#02,#6d,#40,#03,#5c,#40
db #02,#5a,#40,#02,#58,#40,#02,#6f
db #40,#02,#61,#40,#02,#63,#40,#02
db #6b,#40,#02,#ff,#68,#4a,#af,#02
db #5a,#40,#02,#4c,#40,#02,#4b,#40
db #03,#38,#40,#02,#2a,#40,#02,#1c
db #40,#02,#19,#40,#03,#68,#40,#02
db #5a,#40,#02,#4c,#40,#02,#4b,#40
db #02,#3d,#40,#02,#33,#40,#02,#23
db #40,#02,#ff,#44,#31,#20,#42,#30
db #02,#40,#30,#02,#3f,#30,#02,#44
db #30,#02,#42,#30,#02,#40,#30,#02
db #3d,#30,#02,#44,#30,#02,#44,#30
db #02,#42,#30,#02,#40,#30,#02,#42
db #30,#02,#40,#30,#02,#3f,#30,#02
db #3b,#30,#02,#ff,#fe,#20,#ff,#00
db #01,#44,#40,#02,#42,#40,#02,#40
db #40,#02,#3f,#40,#03,#44,#40,#02
db #42,#40,#02,#40,#40,#02,#3d,#40
db #03,#44,#40,#02,#42,#40,#02,#40
db #40,#02,#3f,#40,#02,#3d,#40,#02
db #3f,#40,#02,#bb,#40,#ff,#00,#01
db #5c,#40,#02,#5a,#40,#02,#58,#40
db #02,#57,#40,#03,#5c,#40,#02,#5a
db #40,#02,#58,#40,#02,#55,#40,#03
db #5c,#40,#02,#5a,#40,#02,#58,#40
db #02,#57,#40,#02,#55,#40,#02,#57
db #40,#02,#d3,#40,#ff,#44,#50,#02
db #44,#50,#02,#44,#50,#02,#44,#50
db #03,#44,#50,#02,#44,#50,#02,#44
db #50,#02,#44,#50,#03,#44,#50,#02
db #44,#50,#02,#44,#50,#02,#44,#50
db #02,#44,#50,#02,#44,#50,#02,#44
db #50,#02,#ff,#00,#01,#42,#41,#20
db #3d,#40,#02,#3d,#40,#02,#40,#40
db #02,#44,#40,#02,#42,#40,#02,#3f
db #40,#02,#44,#40,#02,#44,#40,#02
db #42,#40,#02,#42,#40,#02,#44,#40
db #02,#44,#40,#02,#3f,#40,#02,#3f
db #40,#02,#c2,#40,#ff,#00,#20,#ff
db #38,#60,#02,#38,#60,#02,#38,#b0
db #02,#39,#b0,#03,#38,#60,#02,#38
db #60,#02,#38,#b0,#02,#39,#b0,#03
db #38,#60,#02,#38,#60,#02,#38,#b0
db #02,#39,#b0,#08,#ff,#c4,#c0,#c2
db #c0,#c0,#c0,#bf,#c0,#bd,#c0,#bb
db #c0,#c4,#60,#44,#60,#03,#c4,#c0
db #c2,#c0,#c0,#c0,#bd,#c0,#bb,#c0
db #b8,#60,#38,#60,#02,#c4,#c0,#c2
db #c0,#c0,#c0,#bf,#c0,#bd,#c0,#bb
db #c0,#c4,#60,#44,#60,#03,#c4,#c0
db #c2,#c0,#c0,#c0,#bd,#c0,#ff,#e8
db #50,#e8,#50,#b8,#80,#e8,#50,#b8
db #80,#dc,#50,#dc,#50,#b8,#80,#dc
db #50,#b8,#80,#d0,#50,#d0,#50,#b8
db #80,#d0,#50,#b8,#80,#c4,#50,#c4
db #50,#b8,#80,#c4,#50,#b8,#80,#d0
db #50,#d0,#50,#b8,#80,#d0,#50,#b8
db #80,#dc,#50,#dc,#50,#b9,#80,#dc
db #50,#b9,#80,#e8,#50,#e8,#50,#ff
db #b8,#70,#b8,#70,#a9,#90,#b8,#70
db #a9,#90,#b8,#70,#b8,#70,#a9,#90
db #b8,#70,#a9,#90,#b9,#70,#b9,#70
db #a9,#90,#b9,#70,#a9,#90,#b9,#70
db #b9,#70,#a9,#90,#b9,#70,#a9,#90
db #bb,#70,#bb,#70,#a9,#90,#bb,#70
db #a9,#90,#b4,#70,#bb,#70,#b4,#90
db #bb,#70,#b4,#90,#bd,#70,#b6,#70
db #ff
nop
jp l7316	; Hear of Sun
jp l73aa
jp l738e
.l7316
xor a
ld hl,l78c1
call l7387
ld hl,l78ef
call l7387
ld hl,l791d
call l7387
ld ix,l78bd
ld iy,l7947
ld de,#002e
ld b,#03
.l7336
push bc
inc (ix+#1f)
ld l,(iy+#00)
ld h,(iy+#01)
ld a,(hl)
ld (ix+#24),a
inc hl
ld c,(hl)
inc hl
ld b,(hl)
inc hl
ld (ix+#22),l
ld (ix+#23),h
ld (ix+#20),c
ld (ix+#21),b
ld (ix+#25),#ff
add ix,de
inc iy
inc iy
pop bc
djnz l7336
ld hl,l77d6
ld (hl),#06
inc hl
ld (hl),#40
inc hl
ld (hl),#01
inc hl
ld (hl),d
inc hl
ld (hl),#38
ld hl,#ffff
ld (l77d2),hl
ld (l77d4),hl
ld a,#0c
ld c,d
call l77b2
ld a,#0d
ld c,d
jp l77b2
.l7387
ld b,#2a
.l7389
ld (hl),a
inc hl
djnz l7389
ret
.l738e
ld a,#07
ld c,#3f
call l77b2
ld a,#08
ld c,#00
call l77b2
ld a,#09
ld c,#00
call l77b2
ld a,#0a
ld c,#00
jp l77b2
.l73aa
ld hl,l77d8
dec (hl)
ld ix,l78bd
ld bc,l78cb
call l744c
ld ix,l78eb
ld bc,l78f9
call l744c
ld ix,l7919
ld bc,l7927
call l744c
ld hl,l77d1
ld de,l77d8
ld b,#06
call l7429
ld b,#07
call l7429
ld b,#0b
call l7429
ld b,#0d
call l7429
ld de,l77d8
ld a,(de)
or a
ret nz
inc hl
ldi
dec (hl)
ret nz
ld (hl),#40
ld hl,l78dc
call l7402
ld hl,l790a
call l7402
ld hl,l7938
.l7402
ld (hl),#01
inc hl
ld b,h
ld c,l
inc hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
cp #80
jr nz,l7417
ex de,hl
inc hl
ld e,(hl)
inc hl
ld d,(hl)
ld a,(de)
.l7417
inc de
ex de,hl
ld d,b
ld e,c
ldi
ldi
ex de,hl
ld (hl),e
inc hl
ld (hl),d
inc hl
ld (hl),a
inc hl
ld (hl),#ff
ret
.l7429
inc hl
inc de
ld a,(de)
cp (hl)
ret z
ld (hl),a
ld c,a
ld a,b
jp l77b2
.l7434
ld a,(hl)
ld (ix+#1f),a
inc hl
ld (ix+#20),l
ld (ix+#21),h
ld (ix+#17),d
ld (ix+#15),d
ld c,d
ld a,(ix+#00)
jp l77b2
.l744c
ld a,(l77d8)
or a
jp nz,l7504
ld (ix+#08),a
ld (ix+#0a),a
dec (ix+#1f)
jp nz,l7504
ld d,a
ld l,(ix+#20)
ld h,(ix+#21)
ld a,(hl)
inc hl
cp #fe
jr z,l7434
or a
jp z,l74f9
ld r,a
and #7f
cp #10
jr c,l74d4
ld e,(hl)
inc hl
push hl
push bc
sub #10
add #00
add (ix+#24)
ld (ix+#07),a
ld b,d
call l764c
ld (ix+#16),b
ld (ix+#17),#20
inc b
ld (ix+#2c),b
ld (ix+#2d),b
dec b
ld a,e
pop de
ld i,a
and #f0
cp (ix+#25)
jr z,l74ad
ld (ix+#25),a
ld (ix+#1e),b
ld (ix+#29),b
.l74ad
rrca
ld c,a
ld hl,l794d
add hl,bc
ldi
ldi
ldi
ldi
ldi
ldi
bit 6,(hl)
ldi
ldi
ld b,#00
jr z,l74cc
ld (ix+#1e),b
.l74cc
ld a,i
pop hl
ld d,b
and #0f
jr z,l74ed
.l74d4
ld b,d
ex de,hl
and #0f
dec a
add a
ld c,a
ld hl,l77dd
add hl,bc
ld a,(hl)
inc hl
ld h,(hl)
ld l,a
push hl
ex de,hl
ld d,b
ret
add b
add e
add h
add l
add (hl)
add a
.l74ed
ld a,d
or a
jr nz,l74fb
ld a,r
bit 7,a
ld a,#01
jr nz,l74fb
.l74f9
ld a,(hl)
inc hl
.l74fb
ld (ix+#1f),a
ld (ix+#20),l
ld (ix+#21),h
.l7504
ld a,(ix+#17)
or a
jr nz,l751a
ld a,(ix+#15)
or a
ret z
ld (ix+#17),a
ld a,(ix+#14)
and #1f
ld (ix+#16),a
.l751a
ld d,#00
ld e,(ix+#16)
dec (ix+#2c)
jr nz,l7530
ld a,(ix+#2d)
ld (ix+#2c),a
inc (ix+#16)
dec (ix+#17)
.l7530
ld a,(ix+#0d)
or a
jr z,l753e
ld h,a
ld l,(ix+#0c)
add hl,de
ld a,(hl)
jr l755c
.l753e
ld a,(ix+#1a)
or a
jp z,l7563
ld c,a
cp #03
jr nz,l754b
xor a
.l754b
inc a
ld (ix+#1a),a
dec c
ld a,c
jr z,l755c
ld a,(ix+#18)
dec c
jr z,l755c
ld a,(ix+#19)
.l755c
add (ix+#07)
ld b,d
call l764c
.l7563
ld l,(ix+#04)
ld h,(ix+#05)
push hl
ld a,(ix+#08)
or a
jr z,l758b
dec (ix+#1b)
jr nz,l758b
ld a,(ix+#08)
ld (ix+#1b),a
ld c,(ix+#1c)
ld b,(ix+#1d)
add hl,bc
ld (ix+#04),l
ld (ix+#05),h
ex (sp),hl
jr l75c3
.l758b
ld a,(ix+#29)
or a
jr z,l75c3
ld b,a
ld a,(ix+#27)
dec (ix+#26)
jr nz,l75ba
ld c,a
ld a,(ix+#28)
ld (ix+#26),a
ld a,c
add b
ld (ix+#27),a
cp (ix+#2a)
jr nz,l75b1
ld (ix+#29),#ff
jr l75ba
.l75b1
cp (ix+#2b)
jr nz,l75ba
ld (ix+#29),#01
.l75ba
ld b,d
or a
jp p,l75c0
dec b
.l75c0
ld c,a
jr l75ce
.l75c3
ld h,(ix+#0f)
ld l,(ix+#0e)
add hl,de
add hl,de
ld c,(hl)
inc hl
ld b,(hl)
.l75ce
pop hl
bit 7,(ix+#14)
jr z,l75d7
ld h,d
ld l,d
.l75d7
add hl,bc
ld c,l
ld a,(ix+#01)
call l77b2
ld c,h
ld a,(ix+#02)
call l77b2
ld h,(ix+#11)
ld l,(ix+#10)
add hl,de
ld a,(hl)
bit 7,a
jr nz,l762a
and #0f
ld b,a
ld a,(ix+#0a)
or a
jr z,l7619
dec (ix+#09)
jr nz,l7619
ld c,a
ld a,(ix+#0b)
ld (ix+#09),a
ld a,(ix+#1e)
add c
jp p,l7611
xor a
jr l7616
.l7611
cp #10
jr nz,l7616
dec a
.l7616
ld (ix+#1e),a
.l7619
ld a,b
sub (ix+#1e)
jr nc,l7620
xor a
.l7620
or (ix+#06)
ld c,a
ld a,(ix+#00)
call l77b2
.l762a
ld l,(ix+#12)
ld h,(ix+#13)
add hl,de
ld c,(hl)
bit 7,c
ret nz
ld b,(ix+#03)
ld hl,(l77d9)
ld a,h
or b
ld h,a
ld a,c
and #1f
jr z,l7648
ld l,a
ld a,b
cpl
and h
ld h,a
.l7648
ld (l77d9),hl
ret
.l764c
ld hl,l77fb
cp #61
jr nc,l7656
add a
ld c,a
add hl,bc
.l7656
ld a,(hl)
ld (ix+#04),a
inc hl
ld a,(hl)
ld (ix+#05),a
ret
.l7660
ld (ix+#0d),d
ld (ix+#06),d
ld (ix+#1a),d
call l7785
ld (ix+#1e),a
jp l74ed
.l7672
dec b
.l7673
ld a,(hl)
inc hl
ld c,a
and #0f
bit 7,b
jr z,l767e
neg
.l767e
ld (ix+#1c),a
ld (ix+#1d),b
ld a,c
rrca
rrca
rrca
rrca
and #0f
ld (ix+#08),a
ld (ix+#1b),a
jp l74ed
.l7694
dec b
jr l7698
.l7697
inc b
.l7698
call l7785
ld (ix+#0b),a
ld (ix+#09),a
ld (ix+#0a),b
jp l74ed
.l76a7
ld a,(hl)
inc hl
ld c,a
and #0f
ld (ix+#1e),a
ld a,c
and #f0
rrca
rrca
rrca
jp l776a
.l76b8
ld a,(hl)
inc hl
or a
jr z,l76da
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#28),a
ld (ix+#26),a
ld a,c
and #07
ld (ix+#2a),a
neg
ld (ix+#2b),a
ld (ix+#27),a
ld a,#01
.l76da
ld (ix+#29),a
jp l74ed
.l76e0
dec hl
ld a,(hl)
and #0f
ld (l77dc),a
inc hl
ld a,(hl)
inc hl
ld (l77db),a
ld (ix+#0d),d
ld (ix+#1a),d
ld (ix+#06),#10
jp l74ed
.l76fa
ld a,(hl)
or a
jr z,l770b
call l7787
ld (ix+#2c),a
ld (ix+#2d),a
inc hl
jp l74ed
.l770b
ld hl,#0101
ld (l77d7),hl
jp l74ed
.l7714
call l7785
ld (ix+#1e),a
jp l74ed
.l771d
ld a,(hl)
inc hl
push hl
ld e,a
rrca
rrca
rrca
rrca
call l7796
ld (ix+#0e),c
ld (ix+#0f),d
ld a,e
ld d,#04
call l7796
ld (ix+#12),c
ld (ix+#13),d
pop hl
ld d,b
jp l74ed
.l773f
ld a,(hl)
inc hl
ld (l77d6),a
jp l74ed
.l7747
ld a,(hl)
inc hl
ld c,a
rrca
rrca
rrca
rrca
and #0f
ld (ix+#18),a
ld a,c
and #0f
ld (ix+#19),a
ld (ix+#06),d
ld (ix+#0d),d
ld (ix+#1a),#01
jp l74ed
.l7766
call l7785
add a
.l776a
ld b,#00
ld c,a
push hl
ld hl,l79cd
add hl,bc
ld a,(hl)
ld (ix+#0c),a
inc hl
ld a,(hl)
ld (ix+#0d),a
pop hl
ld (ix+#06),b
ld (ix+#1a),b
jp l74ed
.l7785
ld a,(hl)
inc hl
.l7787
cp #10
ret c
ld c,a
and #f0
rrca
rrca
rrca
rrca
ld d,a
ld a,c
and #0f
ret
.l7796
and #0f
add a
add a
add a
add d
ld c,a
ld hl,l794d
add hl,bc
ld c,(hl)
inc hl
ld d,(hl)
ret
db #53,#54,#2d,#31,#32,#38,#20,#4d
db #6f,#64,#75,#6c,#65
.l77b2
di
ld b,#f4
out (c),a
ld b,#f6
in a,(c)
or #c0
out (c),a
and #3f
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld c,a
or #80
out (c),a
out (c),c
ei
.l77d1
ret
.l77d9 equ $ + 7
.l77d8 equ $ + 6
.l77d7 equ $ + 5
.l77d6 equ $ + 4
.l77d4 equ $ + 2
.l77d2
db #00,#00,#00,#00,#00,#00,#00,#00
.l77dc equ $ + 2
.l77db equ $ + 1
db #38,#00,#00
.l77dd
dw l7660,l7673,l7672,l7697
dw l7694,l76a7,l76b8,l76e0
dw l76fa,l76e0,l7714,l771d
dw l773f,l7747,l7766
.l77fb
dw #0000,#0e18,#0d4d,#0c8e
dw #0bda,#0b2f,#0a8f,#09f7
dw #0968,#08e1,#0861,#07e9
dw #0777,#070c,#06a7,#0647
dw #05ed,#0598,#0547,#04fc
dw #04b4,#0470,#0431,#03f4
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
dw #002f,#002d,#002a,#0028
dw #0026,#0024,#0022,#0020
dw #001e,#001c,#001b,#0019
dw #0018,#0016,#0015,#0014
dw #0013,#0012,#0011,#0010
dw #000f
.l78c1 equ $ + 4
.l78bd
db #08,#00,#01,#08,#00,#00,#00,#00
.l78cb equ $ + 6
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l78dc equ $ + 7
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l78eb equ $ + 6
db #00,#00,#00,#00,#00,#00,#09,#02
.l78ef equ $ + 2
db #03,#10,#00,#00,#00,#00,#00,#00
.l78f9 equ $ + 4
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l790a equ $ + 5
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7919 equ $ + 4
db #00,#00,#00,#00,#0a,#04,#05,#20
.l791d
db #00,#00,#00,#00,#00,#00,#00,#00
.l7927 equ $ + 2
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7938 equ $ + 3
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
.l7947 equ $ + 2
db #00,#00,#6d,#7b,#9d,#7b,#cd,#7b
.l794d
db #df,#32,#aa,#9f,#ea,#9f,#2b,#6d
db #df,#32,#2a,#a0,#6a,#a0,#4b,#6c
db #ed,#79,#2d,#7a,#4d,#7a,#00,#00
db #6d,#7a,#ad,#7a,#cd,#7a,#80,#00
db #5f,#33,#be,#57,#9a,#7c,#ba,#49
db #ed,#79,#ed,#7a,#0d,#7b,#9a,#06
db #ed,#79,#2d,#7b,#4d,#7b,#00,#00
db #df,#32,#97,#7c,#98,#7c,#ba,#49
db #bd,#57,#9b,#7c,#bc,#57,#dd,#24
db #df,#32,#bc,#57,#bc,#57,#dd,#24
db #df,#32,#bc,#57,#bc,#57,#dd,#24
db #bc,#57,#bc,#57,#bc,#57,#dd,#24
db #bc,#57,#bc,#57,#bc,#57,#dd,#24
db #bc,#57,#bc,#57,#bc,#57,#dd,#24
db #bc,#57,#df,#32,#df,#32,#00,#00
db #df,#32,#df,#32,#df,#32,#00,#00
.l79cd
db #df,#32,#df,#32,#df,#32,#df,#32
db #df,#32,#df,#32,#df,#32,#df,#32
db #df,#32,#df,#32,#df,#32,#df,#32
db #df,#32,#df,#32,#df,#32,#df,#32
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #90,#01,#e0,#01,#30,#02,#80,#02
db #d0,#02,#20,#03,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #08,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #0d,#0b,#09,#07,#05,#03,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #01,#01,#01,#01,#01,#01,#01,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#0b,#0a,#0a,#0a,#09,#09
db #09,#08,#08,#07,#07,#06,#06,#05
db #04,#03,#01,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #02,#01,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#00,#00,#00,#00,#00,#00,#00
db #00,#fd,#7b,#00,#fd,#7b,#00,#7e
db #7c,#00,#fd,#7b,#00,#7e,#7c,#00
db #ff,#7c,#00,#7e,#7c,#00,#fd,#7b
db #00,#ff,#7c,#00,#69,#7d,#00,#69
db #7d,#00,#6c,#7d,#00,#6c,#7d,#00
db #ce,#7d,#00,#69,#7d,#80,#6d,#7b
db #00,#69,#7d,#00,#69,#7d,#00,#39
db #7e,#00,#69,#7d,#00,#39,#7e,#00
db #6a,#7e,#00,#39,#7e,#00,#69,#7d
db #00,#6a,#7e,#00,#9b,#7e,#00,#9b
db #7e,#00,#f2,#7e,#00,#f2,#7e,#00
db #54,#7f,#00,#69,#7d,#80,#9d,#7b
db #00,#69,#7d,#00,#69,#7d,#00,#69
db #7d,#00,#69,#7d,#00,#69,#7d,#00
db #69,#7d,#00,#69,#7d,#00,#69,#7d
db #00,#69,#7d,#00,#69,#7d,#00,#69
db #7d,#00,#69,#7d,#00,#69,#7d,#00
db #bf,#7f,#00,#69,#7d,#80,#cd,#7b
db #cb,#20,#cb,#20,#c9,#20,#cb,#20
db #c9,#20,#cb,#20,#c9,#20,#cb,#20
db #c9,#20,#cb,#20,#c9,#20,#cb,#20
db #cb,#20,#cc,#20,#cb,#20,#cc,#20
db #cb,#20,#cc,#20,#cb,#20,#cc,#20
db #cb,#20,#cc,#20,#cb,#20,#cc,#20
db #cb,#20,#cc,#20,#cc,#20,#ce,#20
db #cc,#20,#ce,#20,#cc,#20,#ce,#20
db #cc,#20,#ce,#20,#cc,#20,#ce,#20
db #cc,#20,#ce,#20,#cc,#20,#ce,#20
db #cb,#20,#cc,#20,#cb,#20,#cc,#20
db #cb,#20,#cc,#20,#cb,#20,#cc,#20
db #cb,#20,#cc,#20,#cb,#20,#cc,#20
db #c9,#20,#cb,#20,#c9,#20,#cb,#20
db #c9,#20,#cb,#20,#c9,#20,#cb,#20
db #c9,#20,#cb,#20,#c9,#20,#cb,#20
db #ff,#ce,#20,#d0,#20,#ce,#20,#d0
db #20,#ce,#20,#d0,#20,#ce,#20,#d0
db #20,#ce,#20,#d0,#20,#ce,#20,#d0
db #20,#cc,#20,#ce,#20,#cc,#20,#ce
db #20,#cc,#20,#ce,#20,#cc,#20,#ce
db #20,#cc,#20,#ce,#20,#cc,#20,#ce
db #20,#cb,#20,#cc,#20,#cb,#20,#cc
db #20,#cb,#20,#cc,#20,#cb,#20,#cc
db #20,#cb,#20,#cc,#20,#cc,#20,#ce
db #20,#cc,#20,#ce,#20,#cc,#20,#ce
db #20,#cc,#20,#ce,#20,#cc,#20,#ce
db #20,#ce,#20,#d0,#20,#ce,#20,#d0
db #20,#ce,#20,#d0,#20,#ce,#20,#d0
db #20,#ce,#20,#d0,#20,#cc,#20,#ce
db #20,#cc,#20,#ce,#20,#cc,#20,#ce
db #20,#cc,#20,#ce,#20,#cb,#20,#cc
db #20,#ff,#cb,#20,#cb,#20,#cc,#20
db #4c,#20,#02,#cb,#20,#4b,#20,#02
db #cc,#20,#4c,#20,#02,#cb,#20,#4b
db #20,#02,#c9,#20,#49,#20,#03,#cb
db #20,#4b,#20,#02,#c9,#20,#49,#20
db #02,#cb,#20,#4b,#20,#02,#c9,#20
db #49,#20,#03,#cb,#20,#4b,#20,#02
db #cb,#20,#4b,#20,#02,#cb,#20,#4b
db #20,#02,#4c,#20,#02,#4c,#20,#02
db #cb,#20,#4b,#20,#02,#cc,#20,#4c
db #20,#02,#cb,#20,#cb,#20,#ce,#20
db #4e,#20,#02,#cb,#20,#4b,#20,#02
db #d0,#20,#50,#20,#02,#cb,#20,#cb
db #20,#cc,#20,#ff,#00,#40,#ff,#6d
db #50,#02,#6d,#50,#02,#6d,#50,#02
db #6d,#50,#02,#ed,#50,#ed,#50,#ed
db #50,#6d,#50,#02,#ef,#50,#ef,#50
db #ef,#50,#ef,#50,#ef,#50,#6f,#50
db #02,#ed,#50,#6d,#50,#02,#6b,#50
db #02,#69,#50,#02,#6b,#50,#02,#6b
db #50,#02,#ed,#50,#ed,#50,#ed,#50
db #ed,#50,#6d,#50,#02,#6f,#50,#02
db #6f,#50,#02,#6f,#50,#02,#ed,#50
db #6d,#50,#02,#6b,#50,#03,#6b,#50
db #03,#eb,#50,#69,#50,#03,#68,#50
db #03,#eb,#50,#6d,#50,#03,#ed,#50
db #ff,#e9,#50,#69,#50,#02,#69,#50
db #02,#e9,#50,#e9,#50,#e9,#50,#e9
db #50,#e9,#50,#e9,#50,#e9,#50,#69
db #50,#02,#eb,#50,#6b,#50,#02,#6b
db #50,#02,#6b,#50,#02,#eb,#50,#eb
db #50,#eb,#50,#6b,#50,#02,#ed,#50
db #ed,#50,#6d,#50,#02,#6d,#50,#02
db #6f,#50,#02,#6f,#50,#02,#ef,#50
db #6f,#50,#03,#6f,#50,#02,#6f,#50
db #03,#6d,#50,#02,#6d,#50,#02,#6b
db #50,#02,#6b,#50,#02,#e9,#50,#e9
db #50,#e9,#50,#e9,#50,#e9,#50,#e9
db #50,#e9,#50,#e9,#50,#e9,#50,#e9
db #50,#e8,#50,#ff,#4e,#30,#05,#4e
db #30,#05,#4e,#30,#05,#4e,#30,#05
db #4e,#30,#04,#4e,#30,#04,#4e,#30
db #04,#4e,#30,#04,#4e,#30,#04,#4e
db #30,#03,#4e,#30,#03,#4e,#30,#03
db #4e,#30,#03,#4e,#30,#03,#4e,#30
db #03,#4e,#30,#06,#ff,#4e,#30,#04
db #4e,#30,#04,#4e,#30,#04,#4e,#30
db #04,#4e,#30,#04,#4e,#30,#04,#4e
db #30,#04,#4e,#30,#04,#4e,#30,#04
db #4e,#30,#04,#4e,#30,#04,#4e,#30
db #04,#4e,#30,#04,#4e,#30,#04,#4e
db #30,#04,#4e,#30,#04,#ff,#44,#30
db #02,#45,#30,#02,#45,#30,#02,#45
db #30,#02,#c5,#30,#45,#30,#02,#c5
db #30,#45,#30,#02,#45,#30,#02,#c5
db #30,#45,#30,#02,#45,#30,#02,#c5
db #30,#45,#30,#02,#c7,#30,#47,#30
db #02,#c5,#30,#45,#30,#02,#45,#30
db #02,#44,#30,#03,#45,#30,#03,#45
db #30,#02,#44,#30,#03,#c4,#30,#47
db #30,#02,#49,#30,#03,#4b,#30,#02
db #4c,#30,#04,#4e,#30,#02,#4e,#30
db #03,#4e,#30,#04,#ff,#4b,#30,#02
db #4b,#30,#02,#4b,#30,#02,#4b,#30
db #02,#cb,#30,#cb,#30,#cb,#30,#4b
db #30,#02,#cb,#30,#cb,#30,#cb,#30
db #cb,#30,#cb,#30,#4b,#30,#02,#cb
db #30,#4b,#30,#02,#4b,#30,#02,#4b
db #30,#02,#4b,#30,#02,#4b,#30,#02
db #cb,#30,#cb,#30,#cb,#30,#cb,#30
db #4b,#30,#02,#4b,#30,#02,#4b,#30
db #02,#4b,#30,#02,#cb,#30,#49,#30
db #02,#57,#30,#03,#61,#30,#03,#e9
db #30,#6b,#30,#03,#6f,#30,#03,#ef
db #30,#6d,#30,#03,#eb,#30,#ff,#ef
db #30,#6f,#30,#02,#6f,#30,#02,#ef
db #30,#ef,#30,#ef,#30,#ef,#30,#ef
db #30,#ef,#30,#ef,#30,#6f,#30,#02
db #ef,#30,#6f,#30,#02,#6f,#30,#02
db #6f,#30,#02,#ef,#30,#ef,#30,#ef
db #30,#6f,#30,#02,#ef,#30,#ef,#30
db #6f,#30,#02,#6f,#30,#02,#6f,#30
db #02,#6f,#30,#02,#ef,#30,#6f,#30
db #03,#6f,#30,#02,#6f,#30,#03,#6f
db #30,#02,#6f,#30,#02,#6f,#30,#02
db #6f,#30,#02,#ef,#30,#ef,#30,#ef
db #30,#ef,#30,#ef,#30,#ef,#30,#ef
db #30,#ef,#30,#ef,#30,#ef,#30,#ef
db #30,#ff,#00,#02,#70,#60,#02,#6f
db #60,#09,#70,#60,#03,#6f,#60,#02
db #70,#60,#02,#6f,#60,#05,#70,#60
db #04,#6f,#60,#02,#70,#60,#02,#6f
db #60,#02,#70,#60,#03,#ef,#60,#70
db #60,#02,#6f,#60,#02,#f0,#60,#6f
db #60,#02,#70,#60,#02,#6f,#60,#02
db #70,#60,#02,#6f,#60,#0c,#ff
