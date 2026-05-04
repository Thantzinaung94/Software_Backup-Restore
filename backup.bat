@echo off
title Software Backup Tool
echo =======================================================
echo    Extracting Software List...
echo =======================================================
echo.

:: Store current folder as the name of backup.json
winget export -o "%~dp0backup.json" --include-versions

if %errorLevel% equ 0 (
    echo.
    echo [+] Successfully exported to backup.json
) else (
    echo.
    echo [!] Error occurred during export.
)

echo.
pause