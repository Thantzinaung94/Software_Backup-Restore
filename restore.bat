@echo off
title Software Restore Tool

:: Check Administrator Permission
NET SESSION >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] Please Run as Administrator!
    pause
    exit
)

echo =======================================================
echo    Restoring Software from backup.json
echo =======================================================
echo.

:: Check in the current fcolder backup.json is or not
if not exist "%~dp0backup.json" (
    echo [!] Error: backup.json not found in this folder!
    pause
    exit
)

:: Restore Software (make sure skip Versions)
winget import -i "%~dp0backup.json" --ignore-versions --accept-package-agreements --accept-source-agreements

echo.
echo =======================================================
echo    All process completed!
echo =======================================================
pause