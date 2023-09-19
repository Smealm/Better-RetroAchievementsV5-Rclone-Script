:: --------------
:: Experimental Menu
@ECHO OFF
CLS

:MENU
CLS

ECHO ============= Bleeding Edge =============
ECHO -------------------------------------
ECHO 1.  Video Games
ECHO 2.  TV Shows
ECHO 3.  Movies
:: ECHO 4.  placeholder
:: ECHO 5.  placeholder
:: ECHO 6.  placeholder
:: ECHO 7.  placeholder
:: ECHO 8.  placeholder
echo. 
echo ----------------------
echo 9.  Download RClone
echo 10.  About
echo ----------------------
echo.
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO GAMES
IF /I '%INPUT%'=='2' GOTO TVSHOWS
IF /I '%INPUT%'=='3' GOTO MOVIES
IF /I '%INPUT%'=='4' GOTO BOOKS
:: IF /I '%INPUT%'=='5' GOTO placeholder
:: IF /I '%INPUT%'=='6' GOTO placeholder
:: IF /I '%INPUT%'=='7' GOTO placeholder
:: IF /I '%INPUT%'=='8' GOTO placeholder
IF /I '%INPUT%'=='9' GOTO RCLONE_SETUP
IF /I '%INPUT%'=='10' GOTO INFOMENU
IF /I '%INPUT%'=='Q' GOTO Quit

CLS

ECHO ============INVALID INPUT============
ECHO -------------------------------------
ECHO Please select a number from the Main
echo Menu [1, 2, 3, 4, 9, 10] or select 'Q' to quit.
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MENU

:TVSHOWS
CLS

ECHO ============= Bleeding Edge =============
ECHO -------------------------------------
ECHO 1.  AdultSwim
:: ECHO 2.  placeholder
:: ECHO 3.  placeholder
:: ECHO 4.  placeholder
:: ECHO 5.  placeholder
:: ECHO 6.  placeholder
:: ECHO 7.  placeholder
:: ECHO 8.  placeholder
:: echo 9.  placeholder
:: echo 10.  placeholder
:: echo.
:: ECHO ==========PRESS '0' TO GO BACK==========
:: ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO TV_ADULTSWIM
IF /I '%INPUT%'=='3' GOTO placeholder
IF /I '%INPUT%'=='4' GOTO placeholder
IF /I '%INPUT%'=='5' GOTO placeholder
IF /I '%INPUT%'=='6' GOTO placeholder
IF /I '%INPUT%'=='7' GOTO placeholder
IF /I '%INPUT%'=='8' GOTO placeholder
IF /I '%INPUT%'=='9' GOTO placeholder
IF /I '%INPUT%'=='10' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO MENU

:TV_ADULTSWIM
CLS

ECHO ============= Bleeding Edge =============
ECHO -------------------------------------
ECHO 1.  Xavier Renegade Angel
:: ECHO 2.  placeholder
:: ECHO 3.  placeholder
:: ECHO 4.  placeholder
:: ECHO 5.  placeholder
:: ECHO 6.  placeholder
:: ECHO 7.  placeholder
:: ECHO 8.  placeholder
:: echo 9.  placeholder
:: echo 10.  placeholder
echo.
ECHO ==========PRESS '0' TO GO BACK==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO TV_XavierRenegadeAngel
IF /I '%INPUT%'=='3' GOTO placeholder
IF /I '%INPUT%'=='4' GOTO placeholder
IF /I '%INPUT%'=='5' GOTO placeholder
IF /I '%INPUT%'=='6' GOTO placeholder
IF /I '%INPUT%'=='7' GOTO placeholder
IF /I '%INPUT%'=='8' GOTO placeholder
IF /I '%INPUT%'=='9' GOTO placeholder
IF /I '%INPUT%'=='10' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO MENU

:TV_XavierRenegadeAngel
CLS
echo Downloading Xavier Renegade Angel (This might take a while)
echo OFF
powershell Remove-Item -LiteralPath "C:\AdultSwim\XavierRenegadeAngel" -Force -Recurse
powershell New-Item "C:\AdultSwim\XavierRenegadeAngel" -Type Directory
ECHO OFF
powershell -c "Invoke-WebRequest -Uri 'https://archive.org/compress/xavierrenegadeangel/formats=MPEG4&file=/xavierrenegadeangel.zip' -OutFile 'C:\AdultSwim\XavierRenegadeAngel\1.zip'"
echo off
echo Extracting Xavier Renegade Angel
echo off
powershell -c Expand-Archive -force C:\AdultSwim\XavierRenegadeAngel\1.zip -DestinationPath C:\AdultSwim\XavierRenegadeAngel
echo Cleaning up
echo off
powershell Remove-Item -literalpath "C:\AdultSwim\XavierRenegadeAngel\1.zip" -Force
cls
echo Xavier Renegade Angel successfully downloaded to C:\AdultSwim\XavierRenegadeAngel
timeout /t 5
GOTO TV_ADULTSWIM

:MOVIES9
cls



GOTO MENU

:BOOKS
CLS



GOTO MENU

:GAMES
CLS

ECHO ============= GAMES =============
ECHO -------------------------------------
ECHO 1.  ROMSETS
echo.
ECHO ==========PRESS '0' TO GO BACK==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO ROM_SUBMENU
IF /I '%INPUT%'=='2' GOTO placeholder
IF /I '%INPUT%'=='3' GOTO placeholder
IF /I '%INPUT%'=='4' GOTO placeholder
IF /I '%INPUT%'=='5' GOTO placeholder
IF /I '%INPUT%'=='6' GOTO placeholder
IF /I '%INPUT%'=='7' GOTO placeholder
IF /I '%INPUT%'=='8' GOTO placeholder
IF /I '%INPUT%'=='9' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO MENU


:INFOMENU

CLS

ECHO ============= Info Desk =============
ECHO -------------------------------------
ECHO 1.  What is this
ECHO 2.  Download Locations
echo.
ECHO ==========PRESS '0' TO GO BACK==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO WHATISTHIS
IF /I '%INPUT%'=='2' GOTO DL-LOCATE-NFO
IF /I '%INPUT%'=='0' GOTO MENU

:DL-LOCATE-NFO
CLS
echo Video Games = "C:\[ROMSET]" or "C:\[CONSOLE]"
echo TV Shows = "C:\[TVNetwork]\[ShowName]"
echo.
ECHO ==========PRESS '0' TO GO BACK==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='0' GOTO INFOMENU


:WHATISTHIS
CLS
echo This script simply downloads files from the internet archive or other preservation based platforms.
echo.
echo the point of it being a convenient menu for specific content that may be available on such platforms.
echo.
echo the name 'Bleeding Edge' comes from the fact that this script was the experimental version of my edited RA RClone script
echo but its so different now that i consider them seperate.
echo.
echo made it for my own personal use, but decided to post it on Github just in case someone else would find it useful or informative.
echo.
ECHO ==========PRESS '0' TO GO BACK==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='0' GOTO INFOMENU

:RCLONE_SETUP

:: Rclone Cleanup <in case it was closed before it could finish>
echo Cleaning up
ECHO OFF
del rclone.exe /f /q
ECHO OFF
del rclone.zip /f /q
ECHO OFF
rmdir rclone /s /q
CLS
echo Done.
timeout /t 3
cls

:: Rclone Installation
echo Downloading RClone
ECHO OFF
powershell -c Invoke-WebRequest -Uri "https://github.com/rclone/rclone/releases/download/v1.63.1/rclone-v1.63.1-windows-amd64.zip" -OutFile "rclone.zip'"
echo.
echo Extracting RClone
echo off
powershell -c Expand-Archive -force rclone.zip
echo.
echo Cleaning up leftovers
echo off
del rclone.zip /f /q
echo off
move rclone\rclone-v1.63.1-windows-amd64\rclone.exe
echo off
rmdir rclone /s /q
echo off
cls
echo RClone successfully downloaded
timeout /t 5
GOTO MENU

:ROM_SUBMENU
CLS

ECHO ============= ROM Collections =============
ECHO -------------------------------------
ECHO 1.  RetroAchievements
ECHO 2.  placeholder
ECHO 3.  placeholder
ECHO 4.  placeholder
ECHO 5.  placeholder
ECHO 6.  placeholder
ECHO 7.  placeholder
ECHO 8.  placeholder
echo 9.  placeholder
ECHO.
ECHO ==========Press '0' TO GO BACK==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='3' GOTO Selection3
IF /I '%INPUT%'=='4' GOTO Selection4
IF /I '%INPUT%'=='5' GOTO Selection5
IF /I '%INPUT%'=='6' GOTO Selection6
IF /I '%INPUT%'=='7' GOTO Selection7
IF /I '%INPUT%'=='8' GOTO Selection8
IF /I '%INPUT%'=='9' GOTO Selection9
IF /I '%INPUT%'=='0' GOTO MENU

:Selection1




:: Downloading Files

:: Replace "C:\RA_collection" to match where you want your games to be. beware this command will wipe the directory its pointed to before downloading.

:: CSV Files

:: Dialogue
CLS
ECHO Downloading CSV Files

:: Downloading CSV's
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/have.csv" "C:\RA_collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ignore.csv" "C:\RA_collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/miss.csv" "C:\RA_collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1

:: Finished Dialogue
CLS
ECHO Finsished Downloading CSV's
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 10MB
CLS
ECHO Downloading 10MB Collection

rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcade" "C:\RA_collection\Arcade" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine" "C:\RA_collection\PC Engine" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcadia 2001" "C:\RA_collection\Arcadia 2001" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arduboy" "C:\RA_collection\Arduboy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Elektor TV Games Computer" "C:\RA_collection\Elektor TV Games Computer" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Fairchild Channel F" "C:\RA_collection\Fairchild Channel F" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WASM-4" "C:\RA_collection\WASM-4" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Uzebox" "C:\RA_collection\Uzebox" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Interton VC 4000" "C:\RA_collection\Interton VC 4000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Vectrex" "C:\RA_collection\Vectrex" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ColecoVision" "C:\RA_collection\ColecoVision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 7800" "C:\RA_collection\Atari 7800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 2600" "C:\RA_collection\Atari 2600" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Amstrad CPC" "C:\RA_collection\Amstrad CPC" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Lynx" "C:\RA_collection\Atari Lynx" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Magnavox Odyssey 2" "C:\RA_collection\Magnavox Odyssey 2" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Intellivision" "C:\RA_collection\Intellivision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/MSX" "C:\RA_collection\MSX" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-8000-8800" "C:\RA_collection\PC-8000-8800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Pokemon Mini" "C:\RA_collection\Pokemon Mini" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Virtual Boy" "C:\RA_collection\Virtual Boy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/SG-1000" "C:\RA_collection\SG-1000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Watara Supervision" "C:\RA_collection\Watara Supervision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100

:: Finished Dialogue
CLS
ECHO Finsished echo Downloading 10MB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 100MB
CLS
ECHO Downloading 100MB Collection

rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy" "C:\RA_collection\Game Boy" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Apple II" "C:\RA_collection\Apple II" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar" "C:\RA_collection\Atari Jaguar" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WonderSwan" "C:\RA_collection\WonderSwan" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Color" "C:\RA_collection\Game Boy Color" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Neo Geo Pocket" "C:\RA_collection\Neo Geo Pocket" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/32X" "C:\RA_collection\32X" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Master System" "C:\RA_collection\Master System" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: Finished Dialogue
CLS
ECHO Finsished Downloading 100MB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 1GB
CLS
ECHO Downloading 1GB Collection

rclone sync -P --http-url https://ia902701.us.archive.org ":http:/29/items/retroachievements_collection_NES/NES" "C:\RA_collection\NES" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
CLS
ECHO Downloading 1GB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Gear" "C:\RA_collection\Game Gear" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
CLS
ECHO Downloading 1GB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Mega Drive" "C:\RA_collection\Mega Drive" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: Finished Dialogue
CLS
ECHO Finsished 1GB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: 1GB or higher
CLS
ECHO Downloading 1GB or Higher Collection

rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Advance" "C:\RA_collection\Game Boy Advance" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia802606.us.archive.org ":http:/25/items/retroachievements_collection_SNES/SNES" "C:\RA_collection\SNES" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25 --filter="- *(MSU)*"
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo 64" "C:\RA_collection\Nintendo 64" --local-case-sensitive --delete-before --transfers 8 --checkers 16 --tpslimit 8
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo DS" "C:\RA_collection\Nintendo DS" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar CD" "C:\RA_collection\Atari Jaguar CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/3DO Interactive Multiplayer" "C:\RA_collection\3DO Interactive Multiplayer" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine CD" "C:\RA_collection\PC Engine CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-FX" "C:\RA_collection\PC-FX" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Dreamcast" "C:\RA_collection\Dreamcast" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Sega CD" "C:\RA_collection\Sega CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Saturn" "C:\RA_collection\Saturn" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902607.us.archive.org ":http:/23/items/retroachievements_collection_PlayStation_Portable/PlayStation Portable" "C:\RA_collection\PlayStation Portable" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902600.us.archive.org ":http:/29/items/retroachievements_collection_PlayStation/PlayStation" "C:\RA_collection\PlayStation" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia904707.us.archive.org ":http:/16/items/retroachievements_collection_PS2/PlayStation 2" "C:\RA_collection\PlayStation 2" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3

:: Finished Dialogue
CLS
ECHO Finsished 1GB or Higher Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Finished Dialogue
CLS
ECHO Finished All Downloads
echo Returning to ROM Menu
GOTO ROM_SUBMENU

:Selection2


:Selection3

and in here too...

:Selection4

and so on

:Selection5

and so on

:Selection6

and so on

:Selection7

and so on

:Selection8

and so on

:Selection9


:Quit
ECHO OFF
del rclone.exe /f /q
ECHO OFF
CLS

ECHO ==============THANKYOU===============
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE>NUL
EXIT
