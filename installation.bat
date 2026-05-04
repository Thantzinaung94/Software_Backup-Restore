@echo
::check Administrator permission

NET SESSION >nul 2>&1
if %errorLevel% neq 0 (
	echo [*] Please Run as Administrator 
	pause
	exit
)

echo 
===========================================
echo Auto Software Installer (via winget)
echo
===========================================
echo.

echo [*] Installing Notepad++
winget install --id Notepad++.Notepad++ -e --silent --accept-package-agreements --accept-source-agreements

:: 1. Browsers
echo [*] Installing Google Chrome...
winget install --id Google.Chrome -e --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Firefox 
winget install -e --id Mozilla.Firefox --silent --accept-package-agreements --accept-source-agreements

:: 2. Media & Social
echo [*] Installing VLC Media Player...
winget install --id VideoLAN.VLC -e --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Spotify 
winget install -e --id Spotify.Spotify --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Telegram Desktop...
winget install --id Telegram.TelegramDesktop -e --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Viber 
winget install -e --id Rakuten.Viber --silent --accept-package-agreements --accept-source-agreements

:: 3. Utilities
echo [*] Installing 7-Zip...
winget install --id 7zip.7zip -e --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Win-Rar
winget install -e --id RARLab.WinRAR --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Notepad++...
winget install --id Notepad++.Notepad++ -e --silent --accept-package-agreements --accept-source-agreements

:: 4. Developer Tools
echo [*] Installing VS Code...
winget install --id Microsoft.VisualStudioCode -e --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Python 3.14
winget install -e --id Python.Python.3.14 --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Discord 
winget install -e --id Discord.Discord --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Node Js
winget install -e --id OpenJS.NodeJS --silent --accept-package-agreements --accept-source-agreements

echo [*] Installing Git...
winget install --id Git.Git -e --silent --accept-package-agreements --accept-source-agreements

:: 5. Record and Striming
echo [*] Installing OBS Studio
winget install -e --id Google.Chrome --silent --accept-package-agreements --accept-source-agreements


echo [*] Installing Zoom Meeting
winget install -e --id Zoom.Zoom --silent --accept-package-agreements --accept-source-agreements

:: 6. Server 
echo [*] Installing Xampp Server 
winget install -e --id ApacheFriends.Xampp.8.2 --silent --accept-package-agreements --accept-source-agreements


:: 7. Synchronize data
echo [*] Installing SyncTrayZor
winget install -e --id GermanCoding.SyncTrayzor --accept-package-agreements --accept-source-agreements



echo.
echo
===========================================
echo All Installations are complete!
===========================================
pause