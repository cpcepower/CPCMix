
@echo off

setlocal enabledelayedExpansion

set /A "dsknb=0"
set /A "resetfilenb=0"
set /A "filenb=!resetfilenb!"
set /A "maxfilenb=5*512/32"
set "dskname=TEST_MUSIC!dsknb!.dsk"
set /A "maxdsksize=41*9*512-5*512"
set /A "dsksize=-1"
set /A "creatingdsk=0"

for /D %%d IN (..\BIN\*) do (

echo DIRECTORY %%d

for %%f in (%%d\*.BIN) do (
	set /A "filesize=%%~zf"
	set /A "filesizemodulo=%%~zf %% 512"
	set /A "dsksize=!dsksize!-!filesize!+!filesizemodulo!
	if filesizemodulo NEQ 0 set /A "dsksize=!dsksize!-512*2
	set /A "filenb=!filenb!+1"

	if !filenb! GTR !maxfilenb! (
		set /A "creatingdsk=1"
	)
	
	if !dsksize! LEQ 0 	(
		set /A "creatingdsk=1"
	)

	if !creatingdsk! EQU 1 (
		set /A "creatingdsk=0"
		set /A "dsknb=!dsknb!+1"
		set /A "filenb=!resetfilenb!"
		set /A "dsksize=!maxdsksize!-!filesize!"
		set "dskname=TEST_MUSIC!dsknb!.dsk"

		echo creating dsk !dskname!
		.\ManageDsk.exe -C -S!dskname!
	)
	
	echo !filenb! - !dskname! - %%f - !filesize! - !dsksize!
	.\ManageDsk.exe -L!dskname! -A%%f -S!dskname!
)

)

for %%i in (..\CPCMIX.) do (
	set /A "filesize=%%~zi"
	set /A "filesizemodulo=%%~zi %% 512"
	set /A "dsksize=!dsksize!-!filesize!+!filesizemodulo!
	if filesizemodulo NEQ 0 set /A "dsksize=!dsksize!-512*2
	set /A "filenb=!filenb!+1"

	echo !filenb! - !dskname! - %%i - !filesize! - !dsksize!
	ManageDsk.exe -L!dskname! -I"..\CPCMIX."/CPCMIX./BIN/16356/16356 -S!dskname!
)

endlocal

pause