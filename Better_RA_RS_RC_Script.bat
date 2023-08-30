:: Preparation
powershell -c "Invoke-WebRequest -Uri 'https://github.com/rclone/rclone/releases/download/v1.63.1/rclone-v1.63.1-windows-amd64.zip' -OutFile 'rclone.zip'"
powershell -c Expand-Archive -force rclone.zip
del rclone.zip /f /q
move rclone\rclone-v1.63.1-windows-amd64\rclone.exe
rmdir rclone /s /q

:: Replace "C:\RA_collection" to match where you want your games to be. beware this command will wipe the directory its pointed to before downloading.

:: CSV Files
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/have.csv" "C:\RA_collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ignore.csv" "C:\RA_collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/miss.csv" "C:\RA_collection" --local-case-sensitive --delete-before --transfers 1 --checkers 2 --tpslimit 1

:: Below 10MB
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcade" "C:\RA_collection\Arcade" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine" "C:\RA_collection\PC Engine" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arcadia 2001" "C:\RA_collection\Arcadia 2001" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Arduboy" "C:\RA_collection\Arduboy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Elektor TV Games Computer" "C:\RA_collection\Elektor TV Games Computer" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Fairchild Channel F" "C:\RA_collection\Fairchild Channel F" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WASM-4" "C:\RA_collection\WASM-4" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Uzebox" "C:\RA_collection\Uzebox" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Interton VC 4000" "C:\RA_collection\Interton VC 4000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Vectrex" "C:\RA_collection\Vectrex" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/ColecoVision" "C:\RA_collection\ColecoVision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 7800" "C:\RA_collection\Atari 7800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari 2600" "C:\RA_collection\Atari 2600" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Amstrad CPC" "C:\RA_collection\Amstrad CPC" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Lynx" "C:\RA_collection\Atari Lynx" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Magnavox Odyssey 2" "C:\RA_collection\Magnavox Odyssey 2" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Intellivision" "C:\RA_collection\Intellivision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/MSX" "C:\RA_collection\MSX" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-8000-8800" "C:\RA_collection\PC-8000-8800" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Pokemon Mini" "C:\RA_collection\Pokemon Mini" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Virtual Boy" "C:\RA_collection\Virtual Boy" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/SG-1000" "C:\RA_collection\SG-1000" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Watara Supervision" "C:\RA_collection\Watara Supervision" --local-case-sensitive --delete-before --transfers 100 --checkers 200 --tpslimit 100

:: Below 100MB
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy" "C:\RA_collection\Game Boy" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Apple II" "C:\RA_collection\Apple II" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar" "C:\RA_collection\Atari Jaguar" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/WonderSwan" "C:\RA_collection\WonderSwan" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Color" "C:\RA_collection\Game Boy Color" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Neo Geo Pocket" "C:\RA_collection\Neo Geo Pocket" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/32X" "C:\RA_collection\32X" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Master System" "C:\RA_collection\Master System" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: Below 1GB
rclone sync -P --http-url https://ia902701.us.archive.org ":http:/29/items/retroachievements_collection_NES/NES" "C:\RA_collection\NES" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Gear" "C:\RA_collection\Game Gear" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Mega Drive" "C:\RA_collection\Mega Drive" --local-case-sensitive --delete-before --transfers 50 --checkers 100 --tpslimit 50

:: 1GB or higher
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Game Boy Advance" "C:\RA_collection\Game Boy Advance" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25
rclone sync -P --http-url https://ia802606.us.archive.org ":http:/25/items/retroachievements_collection_SNES/SNES" "C:\RA_collection\SNES" --local-case-sensitive --delete-before --transfers 25 --checkers 50 --tpslimit 25 --filter="- *(MSU)*"
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo 64" "C:\RA_collection\Nintendo 64" --local-case-sensitive --delete-before --transfers 8 --checkers 16 --tpslimit 8
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Nintendo DS" "C:\RA_collection\Nintendo DS" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Atari Jaguar CD" "C:\RA_collection\Atari Jaguar CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/3DO Interactive Multiplayer" "C:\RA_collection\3DO Interactive Multiplayer" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC Engine CD" "C:\RA_collection\PC Engine CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/PC-FX" "C:\RA_collection\PC-FX" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Dreamcast" "C:\RA_collection\Dreamcast" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Sega CD" "C:\RA_collection\Sega CD" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902505.us.archive.org ":http:/27/items/retroachievements_collection_v5/Saturn" "C:\RA_collection\Saturn" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia902607.us.archive.org ":http:/23/items/retroachievements_collection_PlayStation_Portable/PlayStation Portable" "C:\RA_collection\PlayStation Portable" --local-case-sensitive --delete-before --transfers 4 --checkers 8 --tpslimit 4
rclone sync -P --http-url https://ia902600.us.archive.org ":http:/29/items/retroachievements_collection_PlayStation/PlayStation" "C:\RA_collection\PlayStation" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3
rclone sync -P --http-url https://ia904707.us.archive.org ":http:/16/items/retroachievements_collection_PS2/PlayStation 2" "C:\RA_collection\PlayStation 2" --local-case-sensitive --delete-before --transfers 3 --checkers 6 --tpslimit 3

:: rclone options:


:: --filter="- SNES/**" --filter="- NES/**" --filter="- PlayStation Portable/**" --filter="- PlayStation/**" --filter="- PlayStation 2/**"
::	Ignores local SNES, NES, PlayStation Portable, PlayStation and PlayStation 2 folders
::	This is required if you plan to have the entire collection with SNES, NES, PlayStation Portable, PlayStation and PlayStation 2 saved in one folder
::	Do not run the first rclone command without those options if you have all archive.org retroachievements_collection* items in one folder, they will be deleted.

:: --filter="- retroachievements_collection*"
::	Excludes archive.org item metadata, reviews and a sqlite database
	
:: --filter="- TamperMonkeyRetroachievements*"	
::	Excludes the Tamper Monkey script

:: --filter="- __ia_thumb.jpg"
::	Excludes archive.org item thumbnail

:: --filter="- rclone.txt"
::	Excludes this rclone.txt file
	
:: --local-case-sensitive --delete-before
::	If a game name on retroachievements.org or filename capitalization is changed, forces Windows to update folder name and/or file name.
::	Not strictly required unless you want your game folder names and file names to match with archive.org
::	Both options need to be used simultaneously on Windows due to the nature of how rclone deals with transfers.
::		Not required on Linux
::		Files already downloaded will not be deleted if their game name or filename have not changed on archive.org


:: Tips:

:: Exclude MSU from SNES, saves about 85GB
:: rclone sync -P --http-url https://ia802606.us.archive.org ":http:/25/items/retroachievements_collection_SNES/SNES" "C:\RA_collection\SNES" --local-case-sensitive --delete-before --filter="- *(MSU)*"

:: Log rclone transfers to a file
:: --log-file="C:\rclone\log.txt"

:: Improve download speed from archive.org
:: --transfers 10 --checkers 2 --tpslimit 10


:: Notes:

:: Running all of the above rclone commands will download entire retroachievements collection into one folder, C:\RA_collection
:: Rerunning all the rclone commands will sync your local collection located in C:\RA_collection to what's available on all archive.org items, including file renames, game names and deletions if a game is removed from retroachievements.org

:: You can use rclone --dry-run option with --log-file="C:\rclone\log.txt" for verification if you plan on running all above rclone commands against your existing local collection.

:: Due to the way scripts are handling FBNeo games, FBNeo csv files are recreated on every collection refresh and will be downloaded repeatedly by rclone or have their timestamps changed on your local collection.
:: You can use --filter="- *FBNeo.csv" to ignore them.
:: Since game hashing for Arcade games is done through a filename ( https://docs.retroachievements.org/Game-Identification/#arcade ) and FBNeo has both merged and non-merged sets,
:: I'm just providing a list of filenames that are supported by FBNeo in those csv's. It is not advisable to mix merged and non-merged games in one set.
:: If you are using FBNeo and have a full set, whenever a new Arcade game is added to retroachievements.org it will be automatically recognised by FBNeo to have achievements.

:: archive.org has a tendency to throw errors during download, rclone with default settings retries three times and will usually succeed.
:: If you are getting multiple errors, just retry later with the same rclone command.



:: Cleanup
del rclone.exe /f /q

pause