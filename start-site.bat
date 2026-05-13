@echo off
cd /d "%~dp0"

REM Eski Python process'larni to'xtating
taskkill /F /IM python.exe >nul 2>&1
timeout /t 1 /nobreak >nul

REM Server ni ishga tushiring
title Zoxid Taklifnoma Server
start "" python -m http.server 8080

REM Brauzer ochish
timeout /t 2 /nobreak >nul
start "" "http://localhost:8080"

echo.
echo ========================================
echo Zoxid Taklifnoma Server ishga tushdi!
echo Server: http://localhost:8080
echo ========================================
echo.
echo Serverni to'xtating uchun: Ctrl+C ni bosing yoki CMD oynasini yoping
echo.
