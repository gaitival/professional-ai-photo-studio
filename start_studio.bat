@echo off
title Photo Studio Generator Launcher

REM Check for CentBrowser first (user's active browser)
if exist "C:\Program Files\CentBrowser\Application\chrome.exe" (
    start "" "C:\Program Files\CentBrowser\Application\chrome.exe" "%~dp0index.html"
    exit
)

REM Check for Google Chrome
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "%~dp0index.html"
    exit
)

REM Fallback to Windows default browser
start "" "%~dp0index.html"
exit
