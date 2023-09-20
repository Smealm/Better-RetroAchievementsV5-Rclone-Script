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
IF /I '%INPUT%'=='4' GOTO BOOKS
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
echo Menu [1, 2, 3, 4, 9, 10] or select 'Q' to quit.
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
echo OFF

:: delete directory if it already exists to prevent overlap
powershell Remove-Item -LiteralPath "C:\Nickelodeon\SpongeBobSquarePants" -Force -Recurse

:: erase "Directory doesn't exist" error if command is being ran for the first time. reprint downloading message.
cls
echo Downloading SpongeBob SquarePants (This might take a while)

:: creates download folder.
powershell New-Item "C:\Nickelodeon\SpongeBobSquarePants" -Type Directory
ECHO OFF

:: downloads zip file to folder
powershell -c "Invoke-WebRequest -Uri 'https://archive.org/compress/spongebob-squarepants-seasons-1-12-movies_20230709/formats=MPEG4&file=/spongebob-squarepants-seasons-1-12-movies_20230709.zip' -OutFile 'C:\Nickelodeon\SpongeBobSquarePants\1.zip'"

:: notifies user of next step
echo off
echo Extracting SpongeBob SquarePants

:: exctracts archive to download folder
echo off
powershell -c Expand-Archive -force C:\Nickelodeon\SpongeBobSquarePants\1.zip -DestinationPath C:\Nickelodeon\SpongeBobSquarePants

:: notifies user of next step
echo Cleaning up

:: deletes zip file
echo off
powershell Remove-Item -literalpath "C:\Nickelodeon\SpongeBobSquarePants\1.zip" -Force

:: clears text on the screen and displays text indicating that its finsishes. waits 5 seconds, then returns to parent menu
cls
echo SpongeBob SquarePants successfully downloaded to C:\Nickelodeon\SpongeBobSquarePants
timeout /t 5
GOTO TV_NICKLODEON




:: ---------------



:: Xavier Renegade Angel
:TV_XavierRenegadeAngel

CLS

echo OFF
powershell Remove-Item -LiteralPath "C:\AdultSwim\XavierRenegadeAngel" -Force -Recurse

cls

echo Downloading Xavier Renegade Angel (This might take a while)

powershell New-Item "C:\AdultSwim\XavierRenegadeAngel" -Type Directory

ECHO OFF
powershell -c "Invoke-WebRequest -Uri 'https://archive.org/compress/xavierrenegadeangel/formats=MPEG4&file=/xavierrenegadeangel.zip' -OutFile 'C:\AdultSwim\XavierRenegadeAngel\1.zip'"

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



:: ---------------











































:: ----------------------------------------------------------------------------------------------------------------------------------------


:: subcategories
:: l8knfak7

:TVSHOWS
CLS

ECHO ============= Bleeding Edge =============
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
IF /I '%INPUT%'=='2' GOTO TV_NICKLODEON
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

ECHO ============= Bleeding Edge =============
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





:TV_NICKLODEON
CLS

ECHO ============= Bleeding Edge =============
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

ECHO ============= Bleeding Edge =============
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
@echo  
powershell -c "iwr 'https://raw.githubusercontent.com/Vencord/Installer/main/install.ps1' -UseBasicParsing | iex"
CLS
echo make sure to check out the creator of Vencord!
echo https://github.com/Vendicated/Vencord
timeout /t 15
GOTO USEFULTOOLS



:MISC_WindowsActivationScriptsMAS
CLS
@echo off
powershell -c "irm https://massgrave.dev/get | iex"
CLS
echo make sure to check out the creator of Microsoft Activation Scripts (MAS)!
echo https://github.com/massgravel/Microsoft-Activation-Scripts
timeout /t 15
GOTO USEFULTOOLS


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

:: Replace "C:\RA_Collection" to match where you want your games to be. beware this command will wipe the directory its pointed to before downloading.

:: CSV Files

:: Dialogue
CLS
ECHO Downloading CSV Files

:: Downloading CSV's
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/have.csv" "C:\RA_Collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ignore.csv" "C:\RA_Collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/miss.csv" "C:\RA_Collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1

:: Finished Dialogue
CLS
ECHO Finsished Downloading CSV's
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 10MB
CLS

ECHO Downloading 10MB Collection (Arcade)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcade" "C:\RA_Collection\Arcade" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
echo Downloading 10MB Collection (PC Engine)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine" "C:\RA_Collection\PC Engine" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Arcadia 2001)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcadia 2001" "C:\RA_Collection\Arcadia 2001" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Arduboy)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arduboy" "C:\RA_Collection\Arduboy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Elektor TV Games Computer)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Elektor TV Games Computer" "C:\RA_Collection\Elektor TV Games Computer" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Fairchild Channel F)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Fairchild Channel F" "C:\RA_Collection\Fairchild Channel F" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (WASM-4)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WASM-4" "C:\RA_Collection\WASM-4" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Uzebox)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Uzebox" "C:\RA_Collection\Uzebox" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Interton VC 4000) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Interton VC 4000" "C:\RA_Collection\Interton VC 4000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Vectrex) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Vectrex" "C:\RA_Collection\Vectrex" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (ColecoVision) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ColecoVision" "C:\RA_Collection\ColecoVision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Atari 7800)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 7800" "C:\RA_Collection\Atari 7800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Atari 2600)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 2600" "C:\RA_Collection\Atari 2600" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Amstrad CPC) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Amstrad CPC" "C:\RA_Collection\Amstrad CPC" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Atari Lynx) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Lynx" "C:\RA_Collection\Atari Lynx" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Magnavox Odyssey 2)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Magnavox Odyssey 2" "C:\RA_Collection\Magnavox Odyssey 2" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Intellivision)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Intellivision" "C:\RA_Collection\Intellivision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (MSX)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/MSX" "C:\RA_Collection\MSX" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (PC-8000-8800)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-8000-8800" "C:\RA_Collection\PC-8000-8800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Pokemon Mini) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Pokemon Mini" "C:\RA_Collection\Pokemon Mini" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Virtual Boy) 
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Virtual Boy" "C:\RA_Collection\Virtual Boy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (SG-1000)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/SG-1000" "C:\RA_Collection\SG-1000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
cls
echo Downloading 10MB Collection (Watara Supervision)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Watara Supervision" "C:\RA_Collection\Watara Supervision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100

:: Finished Dialogue
CLS
ECHO Finsished echo Downloading 10MB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 100MB
CLS

ECHO Downloading 100MB Collection (Game Boy)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy" "C:\RA_Collection\Game Boy" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Apple II)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Apple II" "C:\RA_Collection\Apple II" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Atari Jaguar)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar" "C:\RA_Collection\Atari Jaguar" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (WonderSwan)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WonderSwan" "C:\RA_Collection\WonderSwan" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Game Boy Color)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Color" "C:\RA_Collection\Game Boy Color" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Neo Geo Pocket)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Neo Geo Pocket" "C:\RA_Collection\Neo Geo Pocket" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Sega 32X)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/32X" "C:\RA_Collection\32X" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
cls
ECHO Downloading 100MB Collection (Master System)
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Master System" "C:\RA_Collection\Master System" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: Finished Dialogue
CLS
ECHO Finsished Downloading 100MB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: Below 1GB
CLS
ECHO Downloading 1GB Collection

rclone sync -P --http-url https://ia902701.us.archive.org ":http:/29/items/retroachievements_collection_NES/NES" "C:\RA_Collection\NES" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
CLS
ECHO Downloading 1GB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Gear" "C:\RA_Collection\Game Gear" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
CLS
ECHO Downloading 1GB Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Mega Drive" "C:\RA_Collection\Mega Drive" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: Finished Dialogue
CLS
ECHO Finsished 1GB Collection
ECHO Next Download will begin Shortly
TIMEOUT /T 5

:: 1GB or higher
CLS
ECHO Downloading 1GB or Higher Collection

rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Advance" "C:\RA_Collection\Game Boy Advance" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia802606.us.archive.org ":http:/25/items/retroachievements_collection_SNES/SNES" "C:\RA_Collection\SNES" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25 --filter="- *(MSU)*"
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo 64" "C:\RA_Collection\Nintendo 64" --local-case-sensitive --delete-before --transfers 8 --checkers 16 --tpslimit 8
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo DS" "C:\RA_Collection\Nintendo DS" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar CD" "C:\RA_Collection\Atari Jaguar CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/3DO Interactive Multiplayer" "C:\RA_Collection\3DO Interactive Multiplayer" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine CD" "C:\RA_Collection\PC Engine CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-FX" "C:\RA_Collection\PC-FX" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Dreamcast" "C:\RA_Collection\Dreamcast" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Sega CD" "C:\RA_Collection\Sega CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Saturn" "C:\RA_Collection\Saturn" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902607.us.archive.org ":http:/23/items/retroachievements_collection_PlayStation_Portable/PlayStation Portable" "C:\RA_Collection\PlayStation Portable" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia902600.us.archive.org ":http:/29/items/retroachievements_collection_PlayStation/PlayStation" "C:\RA_Collection\PlayStation" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
cls
ECHO Downloading 1GB or Higher Collection
rclone sync -P --http-url https://ia904707.us.archive.org ":http:/16/items/retroachievements_collection_PS2/PlayStation 2" "C:\RA_Collection\PlayStation 2" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3

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
