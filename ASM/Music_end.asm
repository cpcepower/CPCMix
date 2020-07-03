; end of music header
; $VER 1.6
IFDEF real_init_music
	LET MUSIC_INIT = real_init_music
ELSE
	LET MUSIC_INIT = init_music
ENDIF
IFDEF real_play_music
	LET MUSIC_PLAY = real_play_music
ELSE
	LET MUSIC_PLAY = play_music
ENDIF
IFNDEF FIRST_THEME
	LET FIRST_THEME = #00
ENDIF
IFNDEF LAST_THEME
	LET LAST_THEME = #00
ENDIF
IFNDEF NEED_SYSTEM_VECTOR
	LET NEED_SYSTEM_VECTOR = #00
ENDIF
IFNDEF music_end
	LET music_end = #0000
ENDIF
IFNDEF stop_music
	LET stop_music = #0000
ENDIF

LET EOF_ADDRESS = $
LIST
LET EOF_LENGTH = EOF_ADDRESS-music_begin
NOLIST
END