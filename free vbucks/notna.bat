@echo off
title EMIL KAMINSKI FUNHOUSE :: AUTO SYSTEM
mode con: cols=100 lines=35
chcp 65001 >nul
setlocal enabledelayedexpansion

:: enable ESC (for future ANSI chaos if needed)
for /f "delims=" %%e in ('echo prompt $E^| cmd') do set "ESC=%%e"

:: =========================
:: FAKE AUTO BOOT SEQUENCE
:: =========================
cls
echo Initializing system kernel...
ping 127.0.0.1 -n 2 >nul

echo Loading EMIL core modules...
ping 127.0.0.1 -n 2 >nul

echo Injecting randomness engine...
ping 127.0.0.1 -n 2 >nul

echo WARNING: STABILITY NOT GUARANTEED
ping 127.0.0.1 -n 2 >nul

echo Starting FUNHOUSE AUTO MODE...
ping 127.0.0.1 -n 2 >nul

:: short transition glitch
for /l %%i in (1,1,10) do (
    cls
    echo SYSTEM BOOT FAILURE... RECOMPILING REALITY
    echo %random%%random%%random%%random%
    ping 127.0.0.1 -n 1 >nul
)

:: =========================
:: MAIN AUTO CHAOS LOOP
:: =========================
:loop

cls

:: dynamic color shifting
set /a col=%random% %% 16
color 0%col%

:: header distortion
set /a glitch=%random% %% 3
if !glitch!==0 (
    echo ###### EMIL KAMINSKI FUNHOUSE ######
) else if !glitch!==1 (
    echo ###### EM1L K4M1NSK1 FUNHOUSE ######
) else (
    echo ###### SYSTEM // REALITY UNSTABLE ######
)

echo.

:: auto-generating chaos matrix
for /l %%i in (1,1,10) do (
    set "line="
    for /l %%j in (1,1,90) do (
        set /a r=!random! %% 4
        if !r!==0 set "line=!line!0"
        if !r!==1 set "line=!line!1"
        if !r!==2 set "line=!line! "
        if !r!==3 set "line=!line!#"
    )
    echo !line!
)

echo.
echo SYSTEM LOAD: %random%%%  MEMORY CORRUPTION: %random%%%

:: auto sound burst (light, non-blocking)
powershell -c "[console]::beep((Get-Random -Min 200 -Max 900),50)" >nul 2>&1

:: random speed (feels "alive")
set /a delay=%random% %% 2
if %delay%==0 ping 127.0.0.1 -n 1 >nul

goto loop