@echo off
title EMIL KAMINSKI FUNHOUSE :: ULTRA SIMULATION ENGINE
mode con: cols=110 lines=35
chcp 65001 >nul
setlocal enabledelayedexpansion

:: ESC (future proofing)
for /f "delims=" %%e in ('echo prompt $E^| cmd') do set "ESC=%%e"

:: =========================
:: BOOT SEQUENCE
:: =========================
cls
echo INITIALIZING CORE SYSTEM...
ping 127.0.0.1 -n 2 >nul

echo LOADING VISUAL ENGINE...
ping 127.0.0.1 -n 2 >nul

echo COMPILING REALITY MATRIX...
ping 127.0.0.1 -n 2 >nul

echo WARNING: UNSTABLE BUILD DETECTED
ping 127.0.0.1 -n 2 >nul

echo ENTERING SIMULATION...
ping 127.0.0.1 -n 2 >nul

for /l %%i in (1,1,12) do (
    cls
    echo SYSTEM BOOT FAILURE :: RECOVERING...
    echo %random%%random%%random%%random%%random%
    ping 127.0.0.1 -n 1 >nul
)

:: =========================
:: PHASE 1: "DESKTOP ILLUSION"
:: =========================
:desktop

cls
color 0A

echo ==========================================
echo        EMIL KAMINSKI OS :: DESKTOP
echo ==========================================
echo.
echo [SYSTEM ICONS]
echo  - My Computer
echo  - Recycle Bin (CORRUPTED)
echo  - Control Panel (UNRESPONSIVE)
echo  - Reality.exe
echo.
echo [STATUS] SYSTEM STABILITY: %random%%%
echo.

:: fake "mouse movement simulation"
for /l %%i in (1,1,6) do (
    echo Moving cursor...
    ping 127.0.0.1 -n 1 >nul
)

:: create SAFE temp “corruption files”
set "tmp=%temp%\emil_funhouse"
mkdir "%tmp%" >nul 2>&1

for /l %%i in (1,1,5) do (
    echo CORRUPTED DATA %%random%% > "%tmp%\file_%%i.sys"
)

ping 127.0.0.1 -n 2 >nul

:: =========================
:: PHASE 2: REALITY BREAKDOWN
:: =========================
:loop
cls

set /a col=%random% %% 16
color 0%col%

set /a mode=%random% %% 4

if !mode!==0 echo [KERNEL] MEMORY LEAK DETECTED
if !mode!==1 echo [CORE] REALITY THREAD DESYNC
if !mode!==2 echo [ENGINE] VISUAL BUFFER OVERFLOW
if !mode!==3 echo [SYSTEM] EMIL MODULE ACTIVE

echo.
echo ------------------------------------------
echo.

:: chaotic matrix
for /l %%i in (1,1,12) do (
    set "line="
    for /l %%j in (1,1,100) do (
        set /a r=!random! %% 5
        if !r!==0 set "line=!line!0"
        if !r!==1 set "line=!line!1"
        if !r!==2 set "line=!line!#"
        if !r!==3 set "line=!line! "
        if !r!==4 set "line=!line!X"
    )
    echo !line!
)

echo.
echo SYSTEM LOAD: %random%%%   CORE TEMP: %random%%%
echo FILESYSTEM INSTABILITY: ACTIVE

:: pseudo “self-modification simulation”
echo.
echo [ENGINE] rewriting logic layer...
echo set /a col=%%random%% %%%% 16 > "%tmp%\rewrite_sim.txt"
echo color 0%%col%% >> "%tmp%\rewrite_sim.txt"

:: beep glitch pulse
powershell -c "[console]::beep((Get-Random -Min 200 -Max 1200),40)" >nul 2>&1

:: random speed distortion
set /a delay=%random% %% 3
if !delay!==0 ping 127.0.0.1 -n 2 >nul

:: occasional "system collapse flash"
set /a crash=%random% %% 20
if !crash!==0 goto panic

goto loop

:: =========================
:: PHASE 3: PANIC STATE
:: =========================
:panic
cls
color 0C

echo !!! KERNEL PANIC !!!
echo SYSTEM HAS ENTERED UNSTABLE STATE
echo.
echo EMIL CORE IS NOW AUTONOMOUS
echo.
echo %random%%random%%random%%random%
echo %random%%random%%random%%random%
echo.

ping 127.0.0.1 -n 2 >nul

:: infinite panic flicker
:panicloop
cls
echo SYSTEM FAILURE - REALITY UNSYNCHRONIZED
echo ###############################
echo %random%%random%%random%%random%
echo ###############################
ping 127.0.0.1 -n 1 >nul
goto panicloop