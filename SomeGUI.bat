:: Search these codes to quickly go to these sections.
:: TV Channels = ccysezls
:: TV Shows = c4abk2th
:: Misc = p3nc0tf9
:: Main Menu Subcategories = l8knfak7



:: ------------
:: MAIN MENU

@ECHO OFF
title 'Bleeding Edge - Content downloader'
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
echo 9.  Tools
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
:: IF /I '%INPUT%'=='4' GOTO placeholder
:: IF /I '%INPUT%'=='5' GOTO placeholder
:: IF /I '%INPUT%'=='6' GOTO placeholder
:: IF /I '%INPUT%'=='7' GOTO placeholder
:: IF /I '%INPUT%'=='8' GOTO placeholder
IF /I '%INPUT%'=='9' GOTO USEFULTOOLS
IF /I '%INPUT%'=='10' GOTO INFOMENU
IF /I '%INPUT%'=='Q' GOTO Quit

CLS

ECHO ============INVALID INPUT============
ECHO -------------------------------------
ECHO Please select a number from the Main
echo Menu [1, 2, 3, 9, 10] or select 'Q' to quit.
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MENU



:: -----------------------------------------------------------------------------------------------------------------------










:: ----------------------------------------------------------------------------------------------------------------------------------------


::TV Shows
:: c4abk2th 





:: spongebob-squarepants-seasons-1-12-movies (33.1GB)
:TV_SpongeBobSquarePants
CLS
@echo OFF

echo Downloading SpongeBob SquarePants
echo (This might take a while)
echo.

:: downloads Show to folder
ECHO OFF
rclone sync -P --http-url https://ia902701.us.archive.org ":http:/22/items/spongebob-squarepants-seasons-1-12-movies_20230709" "%userprofile%\Videos\TV\Nickelodeon\SpongeBobSquarePants" --filter="- *.jpg" --filter="- *.xml" --filter="- *.sqlite" --filter="- spongebob-squarepants-seasons-1-12-movies_20230709.thumbs/**"  --local-case-sensitive --delete-before --transfers 2 --checkers 4 --tpslimit 125

:: clears text on the screen and displays text indicating that its finsishes. waits 5 seconds, then returns to parent menu
cls
echo SpongeBob SquarePants successfully downloaded to %userprofile%\Videos\TV\Nickelodeon\SpongebobSquarepants
timeout /t 5
GOTO TV_NICKELODEON




:: ---------------



:: Xavier Renegade Angel
:TV_XavierRenegadeAngel

CLS
echo Downloading Xavier Renegade Angel 
echo (This might take a while)
echo.

ECHO OFF
rclone sync -P --http-url https://ia903102.us.archive.org ":http:/28/items/xavierrenegadeangel/" "%userprofile%\Videos\TV\AdultSwim\XavierRenegadeAngel" --filter="- *.jpg" --filter="- *.xml" --filter="- *.sqlite" --filter="- *.ogv" --filter="- xavierrenegadeangel.thumbs/**" --ignore-case --delete-before --transfers 2 --checkers 4 --tpslimit 25

CLS
echo Xavier Renegade Angel successfully downloaded to %userprofile%\Videos\TV\AdultSwim\XavierRenegadeAngel

timeout /t 5
GOTO TV_ADULTSWIM



:: ---------------











































:: ----------------------------------------------------------------------------------------------------------------------------------------


:: subcategories
:: l8knfak7

:TVSHOWS
CLS

ECHO ============= TV CHANNELS =============
ECHO -------------------------------------
ECHO 1.  AdultSwim
ECHO 2.  Nickelodeon
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

IF /I '%INPUT%'=='1' GOTO TV_ADULTSWIM
IF /I '%INPUT%'=='2' GOTO TV_NICKELODEON
:: IF /I '%INPUT%'=='3' GOTO placeholder
:: IF /I '%INPUT%'=='4' GOTO placeholder
:: IF /I '%INPUT%'=='5' GOTO placeholder
:: IF /I '%INPUT%'=='6' GOTO placeholder
:: IF /I '%INPUT%'=='7' GOTO placeholder
:: IF /I '%INPUT%'=='8' GOTO placeholder
:: IF /I '%INPUT%'=='9' GOTO placeholder
:: IF /I '%INPUT%'=='10' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO MENU

:: ---------------

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


::------------



:MOVIES
cls

Echo There is nothing here yet!

echo OFF
timeout /t 5

GOTO MENU


:: ---------------


:BOOKS
CLS

Echo There is nothing here yet!

echo OFF
timeout /t 5

GOTO MENU


:: ---------------



:USEFULTOOLS

CLS

ECHO ============= USEFUL TOOLS =============
ECHO -------------------------------------
ECHO 1.  Download RClone
ECHO 2.  Activate Windows
ECHO 3.  Download Vencord
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

IF /I '%INPUT%'=='1' GOTO RCLONE_SETUP
IF /I '%INPUT%'=='2' GOTO MISC_WindowsActivationScriptsMAS
IF /I '%INPUT%'=='3' GOTO MISC_VENCORD_SETUP
:: IF /I '%INPUT%'=='4' GOTO placeholder
:: IF /I '%INPUT%'=='5' GOTO placeholder
:: IF /I '%INPUT%'=='6' GOTO placeholder
:: IF /I '%INPUT%'=='7' GOTO placeholder
:: IF /I '%INPUT%'=='8' GOTO placeholder
:: IF /I '%INPUT%'=='9' GOTO placeholder
:: IF /I '%INPUT%'=='10' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO MENU








:: ----------------------------------------------------------------------------------------------------------------------------------------

:: TV Channels
:: ccysezls





:TV_NICKELODEON
CLS

ECHO ============= NICKELODEON =============
ECHO -------------------------------------
ECHO 1.  SpongeBob SquarePants (33.1GB)
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

IF /I '%INPUT%'=='1' GOTO TV_SpongeBobSquarePants
IF /I '%INPUT%'=='3' GOTO placeholder
IF /I '%INPUT%'=='4' GOTO placeholder
IF /I '%INPUT%'=='5' GOTO placeholder
IF /I '%INPUT%'=='6' GOTO placeholder
IF /I '%INPUT%'=='7' GOTO placeholder
IF /I '%INPUT%'=='8' GOTO placeholder
IF /I '%INPUT%'=='9' GOTO placeholder
IF /I '%INPUT%'=='10' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO TVSHOWS

:: ---------



:TV_ADULTSWIM
CLS

ECHO ============= ADULT SWIM =============
ECHO -------------------------------------
ECHO 1.  Xavier Renegade Angel (963.7MB)
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
:: IF /I '%INPUT%'=='3' GOTO placeholder
:: IF /I '%INPUT%'=='4' GOTO placeholder
:: IF /I '%INPUT%'=='5' GOTO placeholder
:: IF /I '%INPUT%'=='6' GOTO placeholder
:: IF /I '%INPUT%'=='7' GOTO placeholder
:: IF /I '%INPUT%'=='8' GOTO placeholder
:: IF /I '%INPUT%'=='9' GOTO placeholder
:: IF /I '%INPUT%'=='10' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO MENU





:: ---------------------------------------------------------------------------------------------------------------------------------

:: Video Games

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
:: IF /I '%INPUT%'=='2' GOTO placeholder
:: IF /I '%INPUT%'=='3' GOTO placeholder
:: IF /I '%INPUT%'=='4' GOTO placeholder
:: IF /I '%INPUT%'=='5' GOTO placeholder
:: IF /I '%INPUT%'=='6' GOTO placeholder
:: IF /I '%INPUT%'=='7' GOTO placeholder
:: IF /I '%INPUT%'=='8' GOTO placeholder
:: IF /I '%INPUT%'=='9' GOTO placeholder
IF /I '%INPUT%'=='0' GOTO MENU


:: -------------


:ROM_SUBMENU
CLS

ECHO ============= ROM Collections =============
ECHO -------------------------------------
ECHO 1.  RetroAchievements Collection (197.4GB)
:: ECHO 2.  placeholder
:: ECHO 3.  placeholder
:: ECHO 4.  placeholder
:: ECHO 5.  placeholder
:: ECHO 6.  placeholder
:: ECHO 7.  placeholder
:: ECHO 8.  placeholder
:: echo 9.  placeholder
ECHO.
ECHO ==========Press '0' TO GO BACK==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO DL_RA_COLLECTION
:: IF /I '%INPUT%'=='2' GOTO Selection2
:: IF /I '%INPUT%'=='3' GOTO Selection3
:: IF /I '%INPUT%'=='4' GOTO Selection4
:: IF /I '%INPUT%'=='5' GOTO Selection5
:: IF /I '%INPUT%'=='6' GOTO Selection6
:: IF /I '%INPUT%'=='7' GOTO Selection7
:: IF /I '%INPUT%'=='8' GOTO Selection8
:: IF /I '%INPUT%'=='9' GOTO Selection9
IF /I '%INPUT%'=='0' GOTO GAMES









:: ----------------------------------------------------------------------------------------------------------------------------------------


:: Misc
:: p3nc0tf9


:MISC_VENCORD_SETUP
CLS
@echo off
echo Initialising
powershell -c "iwr 'https://raw.githubusercontent.com/Vencord/Installer/main/install.ps1' -UseBasicParsing | iex"
CLS
echo make sure to check out the creator of Vencord!
echo https://github.com/Vendicated/Vencord
timeout /t 15
GOTO USEFULTOOLS



:MISC_WindowsActivationScriptsMAS
CLS
@echo off
echo Initialising
powershell -c "irm https://massgrave.dev/get | iex"
CLS
echo make sure to check out the creator of Microsoft Activation Scripts (MAS)!
echo https://github.com/massgravel/Microsoft-Activation-Scripts
timeout /t 15
GOTO USEFULTOOLS


:DL-LOCATE-NFO
CLS
echo Video Games = "%userprofile%\Games\[ROMSET]" or "%userprofile%\Games\[CONSOLE]"
echo TV Shows = "%userprofile%\Videos\TV\[TVNetwork]\[ShowName]"
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


:: ----------------


:RCLONE_SETUP
cls
:: Rclone Cleanup <in case it was closed before it could finish>
echo Preparing.

ECHO OFF
del rclone.exe /f /q

cls
echo Preparing..

ECHO OFF
del rclone.zip /f /q

cls
echo Preparing...

ECHO OFF
rmdir rclone /s /q

CLS
echo Preparations Complete.

timeout /t 3
cls

:: Rclone Installation
echo Downloading RClone
ECHO OFF
powershell -c Invoke-WebRequest -Uri "https://github.com/rclone/rclone/releases/download/v1.63.1/rclone-v1.63.1-windows-amd64.zip" -OutFile "rclone.zip"

CLS

echo Extracting RClone
echo off
powershell -c Expand-Archive -force rclone.zip

CLS
echo Cleaning up leftovers.

echo off
del rclone.zip /f /q

CLS
echo Cleaning up leftovers..

echo off
move rclone\rclone-v1.63.1-windows-amd64\rclone.exe

CLS
echo Cleaning up leftovers...

echo off
rmdir rclone /s /q

CLS
echo Cleaning up leftovers....

echo off
cls
echo RClone successfully downloaded

timeout /t 5
GOTO MENU


:: ------------------







:: -----------------------------------------------------------------------------------------------------------------------------------------











:DL_RA_COLLECTION




:: Downloading Files

:: Replace "%userprofile%\Games\ROMSETS\RetroAchievements" to match where you want your games to be. beware this command will wipe the directory its pointed to before downloading.

:: CSV Files

:: Dialogue
CLS
ECHO Downloading CSV Files

:: Downloading CSV's
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/have.csv" "%userprofile%\Games\ROMSETS\RetroAchievements" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ignore.csv" "%userprofile%\Games\ROMSETS\RetroAchievements" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/miss.csv" "%userprofile%\Games\ROMSETS\RetroAchievements" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1

:: Finished Dialogue
CLS
ECHO Finsished Downloading CSV's
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 10MB
CLS

ECHO Downloading 10MB Collection (Arcade)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcade" "%userprofile%\Games\ROMSETS\RetroAchievements\Arcade" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
echo Downloading 10MB Collection (PC Engine)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine" "%userprofile%\Games\ROMSETS\RetroAchievements\PC Engine" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Arcadia 2001)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcadia 2001" "%userprofile%\Games\ROMSETS\RetroAchievements\Arcadia 2001" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Arduboy)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arduboy" "%userprofile%\Games\ROMSETS\RetroAchievements\Arduboy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Elektor TV Games Computer)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Elektor TV Games Computer" "%userprofile%\Games\ROMSETS\RetroAchievements\Elektor TV Games Computer" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Fairchild Channel F)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Fairchild Channel F" "%userprofile%\Games\ROMSETS\RetroAchievements\Fairchild Channel F" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (WASM-4)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WASM-4" "%userprofile%\Games\ROMSETS\RetroAchievements\WASM-4" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Uzebox)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Uzebox" "%userprofile%\Games\ROMSETS\RetroAchievements\Uzebox" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Interton VC 4000) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Interton VC 4000" "%userprofile%\Games\ROMSETS\RetroAchievements\Interton VC 4000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Vectrex) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Vectrex" "%userprofile%\Games\ROMSETS\RetroAchievements\Vectrex" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (ColecoVision) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ColecoVision" "%userprofile%\Games\ROMSETS\RetroAchievements\ColecoVision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Atari 7800)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 7800" "%userprofile%\Games\ROMSETS\RetroAchievements\Atari 7800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Atari 2600)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 2600" "%userprofile%\Games\ROMSETS\RetroAchievements\Atari 2600" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Amstrad CPC) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Amstrad CPC" "%userprofile%\Games\ROMSETS\RetroAchievements\Amstrad CPC" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Atari Lynx) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Lynx" "%userprofile%\Games\ROMSETS\RetroAchievements\Atari Lynx" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Magnavox Odyssey 2)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Magnavox Odyssey 2" "%userprofile%\Games\ROMSETS\RetroAchievements\Magnavox Odyssey 2" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Intellivision)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Intellivision" "%userprofile%\Games\ROMSETS\RetroAchievements\Intellivision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (MSX)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/MSX" "%userprofile%\Games\ROMSETS\RetroAchievements\MSX" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (PC-8000-8800)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-8000-8800" "%userprofile%\Games\ROMSETS\RetroAchievements\PC-8000-8800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Pokemon Mini) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Pokemon Mini" "%userprofile%\Games\ROMSETS\RetroAchievements\Pokemon Mini" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Virtual Boy) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Virtual Boy" "%userprofile%\Games\ROMSETS\RetroAchievements\Virtual Boy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (SG-1000)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/SG-1000" "%userprofile%\Games\ROMSETS\RetroAchievements\SG-1000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Watara Supervision)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Watara Supervision" "%userprofile%\Games\ROMSETS\RetroAchievements\Watara Supervision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100

:: Finished Dialogue
CLS
ECHO Finsished Downloading 10MB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 100MB
CLS

ECHO Downloading 100MB Collection (Game Boy)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy" "%userprofile%\Games\ROMSETS\RetroAchievements\Game Boy" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Apple II)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Apple II" "%userprofile%\Games\ROMSETS\RetroAchievements\Apple II" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Atari Jaguar)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar" "%userprofile%\Games\ROMSETS\RetroAchievements\Atari Jaguar" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (WonderSwan)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WonderSwan" "%userprofile%\Games\ROMSETS\RetroAchievements\WonderSwan" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Game Boy Color)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Color" "%userprofile%\Games\ROMSETS\RetroAchievements\Game Boy Color" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Neo Geo Pocket)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Neo Geo Pocket" "%userprofile%\Games\ROMSETS\RetroAchievements\Neo Geo Pocket" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Sega 32X)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/32X" "%userprofile%\Games\ROMSETS\RetroAchievements\32X" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Master System)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Master System" "%userprofile%\Games\ROMSETS\RetroAchievements\Master System" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: Finished Dialogue
CLS
ECHO Finsished Downloading 100MB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 1GB
CLS
ECHO Downloading 1GB Collection

rclone sync -P --http-url https://ia902701.us.archive.org ":http:/29/items/retroachievements_collection_NES/NES" "%userprofile%\Games\ROMSETS\RetroAchievements\NES" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
CLS
ECHO Downloading 1GB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Gear" "%userprofile%\Games\ROMSETS\RetroAchievements\Game Gear" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
CLS
ECHO Downloading 1GB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Mega Drive" "%userprofile%\Games\ROMSETS\RetroAchievements\Mega Drive" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: Finished Dialogue
CLS
ECHO Finsished 1GB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: 1GB or higher
CLS
ECHO Downloading 1GB or Higher Collection

rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Advance" "%userprofile%\Games\ROMSETS\RetroAchievements\Game Boy Advance" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia802606.us.archive.org ":http:/25/items/retroachievements_collection_SNES/SNES" "%userprofile%\Games\ROMSETS\RetroAchievements\SNES" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25 --filter="- *(MSU)*"
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo 64" "%userprofile%\Games\ROMSETS\RetroAchievements\Nintendo 64" --local-case-sensitive --delete-before --transfers 8 --checkers 16 --tpslimit 8
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo DS" "%userprofile%\Games\ROMSETS\RetroAchievements\Nintendo DS" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar CD" "%userprofile%\Games\ROMSETS\RetroAchievements\Atari Jaguar CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/3DO Interactive Multiplayer" "%userprofile%\Games\ROMSETS\RetroAchievements\3DO Interactive Multiplayer" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine CD" "%userprofile%\Games\ROMSETS\RetroAchievements\PC Engine CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-FX" "%userprofile%\Games\ROMSETS\RetroAchievements\PC-FX" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Dreamcast" "%userprofile%\Games\ROMSETS\RetroAchievements\Dreamcast" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Sega CD" "%userprofile%\Games\ROMSETS\RetroAchievements\Sega CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Saturn" "%userprofile%\Games\ROMSETS\RetroAchievements\Saturn" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902607.us.archive.org ":http:/23/items/retroachievements_collection_PlayStation_Portable/PlayStation Portable" "%userprofile%\Games\ROMSETS\RetroAchievements\PlayStation Portable" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902600.us.archive.org ":http:/29/items/retroachievements_collection_PlayStation/PlayStation" "%userprofile%\Games\ROMSETS\RetroAchievements\PlayStation" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia904707.us.archive.org ":http:/16/items/retroachievements_collection_PS2/PlayStation 2" "%userprofile%\Games\ROMSETS\RetroAchievements\PlayStation 2" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3

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
CLS

ECHO ==============THANKYOU===============
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE>NUL
EXIT
