; Music of Deadly Evil (1990)(Players Premier)(Sonic Graffiti and Andy Severn)()
; Ripped by Megachur the 10/11/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEADLYEV.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #4000

	read "music_header.asm"

	jp l49f0	; sound fx !?
	jp l4adb	; play music
.l4008 equ $ + 2
.l4007 equ $ + 1
.l4006
	db #00,#01,#00,#0f,#08,#00,#ff,#0e
	db #3c,#0a,#ff,#14,#02,#03,#03,#04
	db #1e,#18,#12,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#08
	db #00,#ff,#0e,#1e,#0a,#ff,#ff,#00
	db #00,#00,#08,#00,#00,#00,#00,#05
	db #07,#07,#05,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0f,#08,#00,#ff,#0e,#1e,#0a
	db #ff,#ff,#00,#00,#00,#06,#00,#00
	db #00,#05,#07,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#c2,#00
	db #00,#00,#00,#00,#0f,#08,#00,#ff
	db #0e,#3c,#0a,#ff,#ff,#00,#00,#00
	db #06,#03,#03,#03,#07,#07,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#c2,#00,#00,#00,#00,#00,#0f
	db #02,#01,#ff,#0c,#0a,#02,#ff,#0f
	db #01,#03,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c2,#00,#00,#00
	db #00,#00,#0d,#08,#00,#ff,#0c,#0a
	db #04,#ff,#04,#01,#03,#01,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#c2
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #fe,#0d,#00,#00,#ff,#ff,#00,#00
	db #03,#06,#00,#fc,#f4,#f4,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0f,#08,#01,#ff,#0c
	db #14,#02,#ff,#10,#01,#02,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#06
	db #01,#ff,#0d,#14,#04,#ff,#09,#01
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #08,#00,#ff,#0e,#14,#0a,#ff,#ff
	db #00,#00,#00,#08,#00,#00,#00,#dc
	db #dc,#dc,#dc,#e8,#00,#00,#00,#00
	db #00,#00,#00,#00,#c2,#00,#00,#00
	db #00
.l42ed equ $ + 6
.l42e7
	dw l436b,l441c,l44b6,l4546
	dw l454b,l4550,l4555,l455a
	dw l455f,l4564,l4569,l456e
	dw l4573,l4586,l4599,l45ac
	dw l45b1,l45c4,l45cf,l45d7
	dw l45e4,l45ef,l45f6,l4601
	dw l460a,l4613,l4618,l461d
	dw l463a,l463f,l4644,l4661
	dw l467e,l469b,l46b9,l46d7
	dw l46f5,l4713,l472d,l4738
	dw l4741,l4748,l474d,l4756
	dw l475f,l4768,l476d,l4772
	dw l4777,l477c,l4781,l4786
	dw l478b,l47a1,l47b7,l47cd
	dw l47e3,l4800,l481d,l483a
	dw l4857,l4862,l486d,l4878
	dw l4883,l489d
.l436b
	db #fc,#00,#fb,#18,#09,#01,#0a,#01
	db #0b,#01,#0d,#01,#09,#01,#0a,#01
	db #0b,#01,#0d,#01,#09,#01,#0a,#01
	db #0b,#01,#0d,#01,#09,#01,#0a,#01
	db #0b,#01,#0d,#01,#09,#01,#0a,#01
	db #0b,#01,#0d,#01,#10,#01,#11,#01
	db #12,#01,#00,#06,#09,#01,#0a,#01
	db #0b,#01,#0d,#01,#09,#01,#0e,#01
	db #0b,#01,#0d,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#1e,#01,#1f,#01
	db #20,#01,#21,#01,#0e,#01,#00,#01
	db #20,#01,#21,#01,#0e,#01,#00,#01
	db #20,#01,#21,#01,#3c,#01,#00,#05
.l441c equ $ + 1
	db #fd,#05,#01,#06,#01,#07,#01,#08
	db #01,#05,#01,#0e,#01,#07,#01,#08
	db #01,#0e,#01,#00,#02,#0f,#01,#00
	db #03,#0e,#01,#00,#04,#13,#01,#00
	db #02,#0f,#01,#00,#05,#17,#01,#00
	db #01,#19,#01,#1a,#01,#14,#01,#15
	db #01,#16,#01,#17,#01,#00,#08,#23
	db #01,#24,#01,#25,#01,#26,#01,#27
	db #01,#28,#01,#29,#01,#30,#01,#31
	db #01,#32,#01,#33,#01,#34,#01,#31
	db #01,#32,#01,#33,#01,#34,#01,#35
	db #01,#36,#01,#37,#01,#38,#01,#35
	db #01,#36,#01,#37,#01,#3d,#01,#35
	db #01,#36,#01,#37,#01,#3d,#01,#35
	db #01,#36,#01,#37,#01,#3d,#01,#35
	db #01,#36,#01,#37,#01,#3d,#01,#35
	db #01,#36,#01,#37,#01,#3d,#01,#35
	db #01,#36,#01,#37,#01,#3d,#01,#01
	db #01,#02,#01,#03,#01,#04,#01,#3e
.l44b6 equ $ + 3
	db #01,#00,#42,#01,#01,#02,#01,#03
	db #01,#04,#01,#01,#01,#02,#01,#03
	db #01,#04,#01,#00,#03,#0f,#01,#00
	db #0d,#01,#01,#02,#01,#03,#01,#04
	db #01,#01,#01,#02,#01,#03,#01,#04
	db #01,#01,#01,#02,#01,#03,#01,#04
	db #01,#18,#01,#1b,#01,#1c,#01,#1d
	db #01,#18,#01,#1b,#01,#1c,#01,#22
	db #01,#18,#01,#1b,#01,#1c,#01,#22
	db #01,#18,#01,#1b,#01,#1c,#01,#1d
	db #01,#2a,#01,#2b,#01,#2c,#01,#2d
	db #01,#0e,#01,#00,#02,#2d,#01,#39
	db #01,#00,#01,#3a,#01,#3b,#01,#00
	db #04,#23,#01,#24,#01,#25,#01,#26
	db #01,#27,#01,#28,#01,#29,#01,#30
	db #01,#23,#01,#24,#01,#25,#01,#26
	db #01,#27,#01,#28,#01,#29,#01,#30
	db #01,#27,#01,#28,#01,#29,#01,#30
.l4546 equ $ + 3
	db #01,#00,#42,#61,#00,#60,#20,#fe
.l4550 equ $ + 5
.l454b
	db #61,#00,#25,#20,#fe,#61,#00,#21
.l455a equ $ + 7
.l4555 equ $ + 2
	db #20,#fe,#61,#00,#1e,#20,#fe,#61
.l455f equ $ + 4
	db #00,#19,#20,#fe,#61,#03,#49,#20
.l4569 equ $ + 6
.l4564 equ $ + 1
	db #fe,#61,#03,#45,#20,#fe,#61,#03
.l456e equ $ + 3
	db #42,#20,#fe,#61,#03,#3d,#20,#fe
.l4573
	db #61,#05,#49,#04,#45,#04,#49,#04
	db #4a,#04,#49,#04,#4c,#04,#49,#04
.l4586 equ $ + 3
	db #4a,#04,#fe,#61,#05,#45,#04,#43
	db #04,#45,#04,#4a,#04,#45,#04,#4c
.l4599 equ $ + 6
	db #04,#45,#04,#4a,#04,#fe,#61,#05
	db #42,#04,#45,#04,#42,#04,#4a,#04
	db #42,#04,#4c,#04,#42,#04,#4a,#04
.l45b1 equ $ + 6
.l45ac equ $ + 1
	db #fe,#61,#00,#60,#20,#fe,#61,#05
	db #3d,#04,#45,#04,#3d,#04,#4a,#04
	db #3d,#04,#4c,#04,#3d,#04,#4a,#04
.l45c4 equ $ + 1
	db #fe,#61,#02,#fa,#00,#01,#49,#20
.l45cf equ $ + 4
	db #fa,#00,#00,#fe,#61,#00,#60,#1c
.l45d7 equ $ + 4
	db #62,#60,#04,#fe,#61,#05,#49,#06
	db #45,#06,#49,#07,#4a,#07,#49,#06
.l45e4 equ $ + 1
	db #fe,#61,#05,#60,#03,#4c,#09,#49
.l45ef equ $ + 4
	db #0d,#4a,#07,#fe,#60,#08,#61,#05
.l45f6 equ $ + 3
	db #49,#18,#fe,#61,#01,#fa,#00,#01
.l4601 equ $ + 6
	db #49,#20,#fa,#00,#00,#fe,#61,#04
.l460a equ $ + 7
	db #49,#10,#4a,#0c,#4c,#04,#fe,#61
	db #04,#45,#10,#47,#08,#49,#08,#fe
.l4618 equ $ + 5
.l4613
	db #61,#04,#4e,#20,#fe,#61,#04,#50
.l461d equ $ + 2
	db #20,#fe,#61,#00,#25,#08,#61,#06
	db #25,#04,#61,#00,#25,#08,#25,#02
	db #62,#60,#02,#61,#06,#25,#04,#61
.l463a equ $ + 7
	db #00,#25,#02,#62,#60,#02,#fe,#61
.l463f equ $ + 4
	db #04,#4e,#20,#fe,#61,#04,#55,#20
.l4644 equ $ + 1
	db #fe,#61,#00,#21,#08,#61,#06,#25
	db #04,#61,#00,#21,#08,#21,#02,#62
	db #60,#02,#61,#06,#25,#04,#61,#00
.l4661 equ $ + 6
	db #21,#02,#62,#60,#02,#fe,#61,#00
	db #1e,#08,#61,#06,#25,#04,#61,#00
	db #1e,#08,#1e,#02,#62,#60,#02,#61
	db #06,#25,#04,#61,#00,#1e,#02,#62
.l467e equ $ + 3
	db #60,#02,#fe,#61,#00,#19,#08,#61
	db #06,#25,#04,#61,#00,#19,#08,#19
	db #02,#62,#60,#02,#61,#06,#25,#04
	db #61,#00,#19,#02,#62,#60,#02,#fe
.l469b
	db #61,#03,#49,#04,#49,#02,#61,#00
	db #62,#60,#02,#61,#03,#49,#02,#61
	db #00,#62,#60,#06,#61,#03,#49,#02
.l46b9 equ $ + 6
	db #62,#60,#02,#49,#0c,#fe,#61,#03
	db #45,#04,#45,#02,#61,#00,#62,#60
	db #02,#61,#03,#45,#02,#61,#00,#62
	db #60,#06,#61,#03,#47,#02,#62,#60
.l46d7 equ $ + 4
	db #02,#47,#0c,#fe,#61,#03,#42,#04
	db #42,#02,#61,#00,#62,#60,#02,#61
	db #03,#42,#02,#61,#00,#62,#60,#06
	db #61,#03,#42,#02,#62,#60,#02,#42
.l46f5 equ $ + 2
	db #0c,#fe,#61,#03,#3d,#04,#3d,#02
	db #61,#00,#62,#60,#02,#61,#03,#3d
	db #02,#61,#00,#62,#60,#06,#61,#03
	db #3d,#02,#62,#60,#02,#3d,#0c,#fe
.l4713
	db #61,#00,#19,#08,#61,#06,#25,#04
	db #61,#00,#19,#08,#19,#02,#62,#60
	db #02,#61,#06,#25,#04,#25,#02,#25
.l472d equ $ + 2
	db #02,#fe,#61,#08,#55,#14,#50,#04
.l4738 equ $ + 5
	db #4e,#04,#50,#04,#fe,#61,#08,#51
.l4741 equ $ + 6
	db #0c,#55,#0c,#58,#08,#fe,#61,#08
.l4748 equ $ + 5
	db #4e,#18,#50,#08,#fe,#61,#08,#49
.l474d equ $ + 2
	db #20,#fe,#61,#08,#49,#0c,#4b,#0c
.l4756 equ $ + 3
	db #50,#08,#fe,#61,#08,#45,#0c,#47
.l475f equ $ + 4
	db #0c,#49,#08,#fe,#61,#08,#4e,#0c
.l4768 equ $ + 5
	db #4c,#0c,#4b,#08,#fe,#61,#14,#49
.l4772 equ $ + 7
.l476d equ $ + 2
	db #20,#fe,#61,#14,#45,#20,#fe,#61
.l4777 equ $ + 4
	db #14,#42,#20,#fe,#61,#14,#3d,#20
.l4781 equ $ + 6
.l477c equ $ + 1
	db #fe,#61,#00,#60,#20,#fe,#61,#00
.l4786 equ $ + 3
	db #60,#20,#fe,#61,#08,#3d,#20,#fe
.l478b
	db #61,#00,#25,#08,#31,#02,#62,#60
	db #02,#31,#02,#62,#60,#06,#31,#02
.l47a1 equ $ + 6
	db #62,#60,#02,#25,#08,#fe,#61,#00
	db #21,#08,#2d,#02,#62,#60,#02,#2d
	db #02,#62,#60,#06,#2d,#02,#62,#60
.l47b7 equ $ + 4
	db #02,#21,#08,#fe,#61,#00,#1e,#08
	db #2a,#02,#62,#60,#02,#2a,#02,#62
	db #60,#06,#2a,#02,#62,#60,#02,#1e
.l47cd equ $ + 2
	db #08,#fe,#61,#00,#19,#08,#25,#02
	db #62,#60,#02,#25,#02,#62,#60,#06
	db #25,#02,#62,#60,#02,#19,#08,#fe
.l47e3
	db #61,#00,#25,#08,#61,#06,#25,#04
	db #61,#00,#31,#02,#62,#60,#06,#31
	db #02,#62,#60,#02,#61,#06,#25,#04
.l4800 equ $ + 5
	db #61,#00,#25,#04,#fe,#61,#00,#21
	db #08,#61,#06,#25,#04,#61,#00,#2d
	db #02,#62,#60,#06,#2d,#02,#62,#60
	db #02,#61,#06,#25,#04,#61,#00,#2d
.l481d equ $ + 2
	db #04,#fe,#61,#00,#1e,#08,#61,#06
	db #25,#04,#61,#00,#2a,#02,#62,#60
	db #06,#2a,#02,#62,#60,#02,#61,#06
.l483a equ $ + 7
	db #25,#04,#61,#00,#2a,#04,#fe,#61
	db #00,#19,#08,#61,#06,#25,#04,#61
	db #00,#25,#02,#62,#60,#06,#25,#02
	db #62,#60,#02,#61,#06,#25,#04,#61
.l4857 equ $ + 4
	db #00,#25,#04,#fe,#61,#02,#fa,#00
.l4862 equ $ + 7
	db #01,#55,#20,#fa,#00,#00,#fe,#61
	db #02,#fa,#00,#01,#4e,#20,#fa,#00
.l486d equ $ + 2
	db #00,#fe,#61,#02,#fa,#00,#01,#49
.l4878 equ $ + 5
	db #20,#fa,#00,#00,#fe,#61,#01,#fa
	db #00,#01,#49,#20,#fa,#00,#00,#fe
.l4883
	db #61,#00,#19,#08,#61,#06,#25,#04
	db #61,#00,#25,#08,#25,#02,#62,#60
	db #02,#61,#06,#25,#04,#25,#02,#25
.l489d equ $ + 2
	db #02,#fe,#61,#00,#60,#04,#61,#14
.l48a8 equ $ + 5
.l48a7 equ $ + 4
.l48a6 equ $ + 3
	db #25,#1c,#fe,#00,#00,#00,#00,#00
	db #00,#00,#00,#30,#30,#30,#30,#00
.l48b9 equ $ + 6
.l48b7 equ $ + 4
.l48b6 equ $ + 3
.l48b5 equ $ + 2
.l48b4 equ $ + 1
.l48b3
	db #0f,#00,#00,#00,#00,#00,#3a,#b5
	db #48,#a7,#47,#c8,#3a,#b7,#48,#fe
	db #80,#ca,#e2,#48,#3a,#b6,#48,#3d
	db #32,#b6,#48,#c0,#3a,#b7,#48,#32
	db #b6,#48,#3a,#b3,#48,#80,#cb,#67
	db #c2,#f1,#48,#32,#b3,#48,#c9,#78
	db #fe,#01,#3e,#0f,#ca,#eb,#48,#af
	db #32,#b3,#48,#c3,#f1,#48,#af,#32
	db #b5,#48,#3a,#b4,#48,#a7,#c2,#a7
	db #4a,#c9,#3e,#00,#32,#b3,#48,#3e
	db #01,#32,#b5,#48,#23,#7e,#32,#b7
	db #48,#32,#b6,#48,#23,#c9,#3e,#0f
	db #32,#b3,#48,#3e,#ff,#c3,#04,#49
.l491c equ $ + 1
	db #00,#7c,#f5,#4d,#fe,#07,#c2,#33
	db #49,#3a,#1b,#49,#b9,#ca,#4e,#49
	db #79,#32,#1b,#49,#cb,#b9,#cb,#b1
	db #3e,#c0,#06,#f6,#ed,#79,#06,#f4
	db #f1,#ed,#79,#06,#f6,#3e,#80,#ed
	db #79,#06,#f4,#ed,#49,#af,#06,#f6
.l4951 equ $ + 6
.l4950 equ $ + 5
	db #ed,#79,#c9,#f1,#c9,#00,#01,#00
.l495a equ $ + 7
.l4959 equ $ + 6
.l4958 equ $ + 5
.l4957 equ $ + 4
.l4956 equ $ + 3
	db #00,#00,#00,#00,#f8,#0f,#0f,#0f
.l495d equ $ + 2
.l495b
	db #00,#00,#00,#00,#00,#0c,#05,#00
	db #08,#01,#ff,#00,#00,#00,#01,#08
	db #00,#00,#04,#00,#00,#00,#00,#00
	db #f7,#14,#0a,#01,#00,#00,#08,#04
	db #00,#00,#01,#00,#00,#00,#0a,#00
.l4988 equ $ + 5
	db #02,#00,#fe,#00,#00,#00,#00,#00
.l498d equ $ + 2
.l498b
	db #00,#00,#00,#00,#00,#0f,#01,#01
	db #02,#01,#ff,#00,#00,#02,#03,#09
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #ef,#ff,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l49b8 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l49bd equ $ + 2
.l49bb
	db #00,#00,#00,#00,#00,#0f,#0a,#01
	db #02,#02,#ff,#00,#00,#04,#05,#0a
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#df,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l49e8 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l49f0
	ld a,#0f
	ld (l48b3),a
	xor a
	ld (l48b5),a
	ld (l48b4),a
	call l4aaf
	ld a,(l48a7)
	cp #ff
	jp nz,l4a0b
	inc a
	ld (l48a7),a
.l4a0b
	ld a,#01
	ld (l495d),a
	ld (l498d),a
	ld (l49bd),a
	xor a
	ld (l48a6),a
	push ix
	ld ix,l495b
	ld a,(l48a7)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l42e7
	add hl,de
	ld (l4a3c),hl
	inc hl
	inc hl
	ld (l4a46),hl
	inc hl
	inc hl
	ld (l4a50),hl
.l4a3c equ $ + 1
	ld hl,(#0000)
	call l4a75
	ld ix,l498b
.l4a46 equ $ + 1
	ld hl,(#0000)
	call l4a75
	ld ix,l49bb
.l4a50 equ $ + 1
	ld hl,(#0000)
	call l4a75
	ld a,#01
	ld (l4007),a
	ld h,#07
	ld l,#f8
	call l491c
	ld a,(l48a7)
	cp #01
	pop ix
	ret
.l4a69
	halt
	call l4adb
	ld a,(l4007)
	and a
	jp nz,l4a69
	ret
.l4a75
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l4ff6
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ret
.l4aa7
	call l4aaf
	xor a
	ld (l4007),a
	ret
.l4aaf
	ld h,#07
	ld l,#ff
	call l491c
	ld hl,l4950
	ld de,l4951
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (l4957),a
.l4ac8
	ld b,#0b
	ld h,#00
	ld de,l4950
.l4acf
	ld a,(de)
	ld l,a
	push bc
	call l491c
	pop bc
	inc h
	inc de
	djnz l4acf
	ret
;
.play_music
.l4adb
;
	ld a,(l4006)
	and a
	jp z,l4b13
	ld b,a
	xor a
	ld (l4006),a
	ld a,b
	cp #ff
	jp z,l4aa7
	cp #fe
	jp nz,l4b0c
	ld b,#0a
	ld a,#01
	ld (l48b4),a
	call l4aff
	jp l4b13
.l4aff
	ld a,#ff
	ld (l48b5),a
	ld a,b
	ld (l48b7),a
	ld (l48b6),a
	ret
.l4b0c
	dec a
	ld (l48a7),a
	jp l49f0
.l4b13
	call l48b9
	ld a,(l4007)
	and a
	jr z,l4b75
	push ix
	ld ix,l495b
	bit 7,(ix+#0c)
	call z,l4b76
	ld ix,l498b
	bit 7,(ix+#0c)
	call z,l4b76
	ld ix,l49bb
	bit 7,(ix+#0c)
	call z,l4b76
	ld a,(l48b3)
	cpl
	and #0f
	ld b,a
	ld a,(l48a6)
	and a
	ld a,#10
	jp nz,l4b57
	ld a,(l4958)
	sub b
	jp nc,l4b57
	xor a
.l4b57
	ld (l4958),a
	ld a,(l4959)
	sub b
	jp nc,l4b62
	xor a
.l4b62
	ld (l4959),a
	ld a,(l495a)
	sub b
	jp nc,l4b6d
	xor a
.l4b6d
	ld (l495a),a
	call l4ac8
	pop ix
.l4b75
	ret
.l4b76
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l4d1d
.l4b7f
	ld a,(ix+#0c)
	and #03
	jp z,l4c3f
	cp #01
	jp z,l4b99
	cp #02
	jp z,l4bd9
	cp #03
	jp z,l4c23
	jp l4c70
.l4b99
	ld a,(ix+#0b)
	and a
	jr z,l4ba5
	dec (ix+#0b)
	jp l4c70
.l4ba5
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l4bc6
	jr nc,l4bc0
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l4c70
.l4bc0
	ld a,(ix+#05)
	ld (ix+#04),a
.l4bc6
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l4c70
.l4bd9
	ld a,(ix+#25)
	and a
	jr z,l4be5
	dec (ix+#25)
	jp l4c70
.l4be5
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l4c04
	ld b,(ix+#26)
	cp b
	jr z,l4c11
	jr c,l4c0b
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l4c70
.l4c04
	ld (ix+#04),#00
	jp l4c11
.l4c0b
	ld a,(ix+#26)
	ld (ix+#04),a
.l4c11
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l4c70
.l4c23
	ld a,(ix+#27)
	and a
	jr z,l4c2e
	dec (ix+#27)
	jr l4c70
.l4c2e
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l4c70
.l4c3f
	ld a,(ix+#29)
	and a
	jr z,l4c4a
	dec (ix+#29)
	jr l4c70
.l4c4a
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l4c60
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l4c70
.l4c60
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l4c70
.l4c70
	ld a,(ix+#04)
	ld hl,l4950
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l4db4
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l4cac
	ld a,(ix+#11)
	ld (ix+#10),a
.l4cac
	ld a,(ix+#1a)
	cp #ff
	jr z,l4ced
	and a
	jr z,l4cbb
	dec (ix+#1a)
	jr nz,l4ced
.l4cbb
	dec (ix+#1f)
	jr nz,l4cce
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l4cce
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l4ce2
	add hl,bc
	jr l4ce4
.l4ce2
	sbc hl,bc
.l4ce4
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l4d08
.l4ced
	ld a,(ix+#2b)
	call l4cfb
	and a
	call nz,l4d08
	ld a,(ix+#02)
	ret
.l4cfb
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l4d08
	ld b,h
	ld c,l
	ld hl,l4950
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l4d1d
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4d23
	ld a,(hl)
	cp #60
	jp z,l4db2
	cp #61
	jp z,l4eb2
	cp #62
	jp z,l4e8c
	cp #64
	jp z,l4e3a
	cp #65
	jp z,l4e7e
	cp #fa
	jp z,l4e51
	cp #fc
	jp z,l4e21
	cp #fd
	jp z,l4e03
	cp #fe
	jp z,l4e94
	cp #ff
	jp z,l4e76
	ld b,a
.l4d57
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld (ix+#10),#00
	ld (ix+#04),#00
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1d),#00
	ld (ix+#1c),#00
.l4d86
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l48a8)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l4db4
	jp l4b7f
.l4db2
	jr l4d86
.l4db4
	ld a,(ix+#17)
	and a
	call nz,l4df8
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l505f
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4950
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l48a6)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l491c
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l491c
	ret
.l4df8
	ld a,(ix+#03)
	neg
	and #1f
	ld (l4956),a
	ret
.l4e03
	ld a,(ix+#05)
	and a
	jp z,l4e17
	ld a,(ix+#26)
	and a
	jp z,l4e17
	dec (ix+#05)
	dec (ix+#26)
.l4e17
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp l4d57
.l4e21
	ld a,(ix+#05)
	cp #0f
	jp z,l4e17
	ld a,(ix+#26)
	cp #0f
	jp z,l4e17
	inc (ix+#05)
	inc (ix+#26)
	jp l4e17
.l4e3a
	inc hl
	ld a,(hl)
	inc hl
	ld (l4956),a
	jp l4ea9
.l4e43
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	xor a
	ld (l48b4),a
	call l4aff
	jp l4ffc
.l4e51
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l4e67
	neg
	ld (ix+#2e),#00
.l4e67
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l4ea9
.l4e76
	inc hl
	ld (ix+#04),#00
	jp l4ea9
.l4e7e
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l491c
	pop hl
	jp l4ea9
.l4e8c
	ld (ix+#04),#00
	inc hl
	jp l4ea9
.l4e94
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l4ea3
	jp l4fe8
	jp l4d23
.l4ea3
	ld l,(ix+#15)
	ld h,(ix+#16)
.l4ea9
	ld (ix+#01),h
	ld (ix+#00),l
	jp l4d23
.l4eb2
	inc hl
	ld a,(hl)
	add (ix+#2f)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l4008
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l4f62
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,l4f49
	cp #09
	jp z,l4f4d
	sla b
	rlc c
	jp l4f4d
.l4f49
	srl b
	sra c
.l4f4d
	ld a,(l4957)
	and c
	or #c0
	or b
	ld (l4957),a
	ld a,(hl)
	bit 7,a
	jp z,l4f62
	and #38
	ld (ix+#17),a
.l4f62
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l4f7e
	ld a,(hl)
	ld (l48a6),a
	and a
	jp z,l4f7e
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l491c
	pop hl
.l4f7e
	pop hl
	jp l4d23
.l4f82
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l51af
	add hl,de
	ld (l48a8),hl
	pop hl
	jp l4ffc
.l4f97
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp l4ffc
.l4fa0
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l4ffc
.l4fa9
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l4ffc
.l4fb2
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (l4988),a
	ld (l49b8),a
	ld (l49e8),a
	jp l4ffc
.l4fc3
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l4ffc
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l4b7f
	call l4aa7
	jp l4b7f
.l4fe8
	call l4ff6
	jp l4d1d
.l4fee
	pop bc
	jp l4aa7
.l4ff2
	pop bc
	jp l49f0
.l4ff6
	ld l,(ix+#20)
	ld h,(ix+#21)
.l4ffc
	ld a,(hl)
	cp #f7
	jp z,l4f97
	cp #f8
	jp z,l4fa0
	cp #f9
	jp z,l4fa9
	cp #f6
	jp z,l4e43
	cp #fa
	jp z,l4fc3
	cp #fb
	jp z,l4fb2
	cp #fc
	jp z,l4f82
	cp #fd
	jp z,l4ff2
	cp #fe
	jr z,l5053
	cp #ff
	jr z,l4fee
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l42ed
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l5053
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l4ffc
.l505f equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51af
	db #03,#06,#09,#0c,#0f,#12,#15,#18
	db #1b,#1e,#21,#24,#27,#2a,#2d,#30
	db #33,#36,#39,#3c,#3f,#42,#45,#48
	db #4b,#4e,#51,#54,#57,#5a,#5d,#60
	db #00
 
; #334a
;	call #2537
; #3323
;	call #251c

; #251c
;	call l2542
;	ld a,#01
;	ld (#4006),a	; init
;	call l2548
;	ret
;	call l2542
;	ld a,#ff
;	ld (#4006),a
;	call #4003	; stop !
;	call l2548
;	ret
;	call l2542
;	call #4003	; play !
;	di
;	call l2548
;	ret
;.l2542
;	ld bc,#7fc4
;	out (c),c
;	ret
;.l2548
;	ld bc,#7fc0
;	out (c),c
;	ret
;
.init_music		; added by Megachur
;
	ld a,#01
	ld (#4006),a	; init
	ret
;
.stop_music		; added by Megachur
;
	ld a,#ff
	ld (#4006),a	; init
	jp play_music
;
.music_info
	db "Deadly Evil (1990)(Players Premier)(Sonic Graffiti and Andy Severn)",0
	db "",0

	read "music_end.asm"
