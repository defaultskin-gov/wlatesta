title EMIL KAMINSKI FUNHOUSE :: VISUAL OVERDRIVE
mode con: cols=120 lines=40
chcp 65001 >nul
setlocal enabledelayedexpansion

:: attempt ANSI enable
for /f "delims=" %%e in ('echo prompt $E^| cmd') do set "ESC=%%e"

:: enable virtual terminal (best effort)
reg add HKCU\CONSOLE /f /v VirtualTerminalLevel /t REG_DWORD /d 1 >nul 2>&1

:: =========================
:: BOOT SEQUENCE
:: =========================
cls
echo BOOTING VISUAL ENGINE...
ping 127.0.0.1 -n 2 >nul

echo INITIALIZING COLOR MATRIX...
ping 127.0.0.1 -n 2 >nul

echo WARNING: FULL SCREEN OVERDRIVE ACTIVE
ping 127.0.0.1 -n 2 >nul

:: =========================
:: FULL SCREEN FLASH ENGINE
:: =========================
:loop

set /a r=%random% %% 256
set /a g=%random% %% 256
set /a b=%random% %% 256

:: ANSI background color fill (entire screen)
cls

<nul set /p "=%ESC%[48;2;%r%;%g%;%b%m"
<nul set /p "=%ESC%[38;2;255;255;255m"

:: draw full-screen block
for /l %%i in (1,1,40) do (
    echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
)

echo.
echo %ESC%[0m

:: overlay status corruption text
set /a mode=%random% %% 5
if !mode!==0 echo [SYSTEM] REALITY BUFFER OVERFLOW
if !mode!==1 echo [CORE] VISUAL THREAD DESYNC
if !mode!==2 echo [ENGINE] EMIL MODULE ACTIVE
if !mode!==3 echo [KERNEL] COLOR MATRIX REWRITING
if !mode!==4 echo [ERROR] SIMULATION INSTABILITY MAXIMUM

:: ultra-fast flicker delay (randomized)
set /a delay=%random% %% 2
if !delay!==0 ping 127.0.0.1 -n 1 >nul

goto loop

%0|%0