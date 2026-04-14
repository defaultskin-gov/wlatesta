@echo off
title CHAOS GODMODE
mode con: cols=120 lines=30

:: enable !random! expansion
setlocal enabledelayedexpansion

:loop
set /a col=%random% %% 16
color !col!

cls

echo ############################################################
echo ###################  CHAOS GODMODE  ########################
echo ############################################################
echo.

:: spam random glitch lines
for /l %%i in (1,1,20) do (
    echo !random!!random!!random!!random!!random!!random!!random!
)

echo.
echo SYSTEM OVERRIDE: !random!%% COMPLETE
echo SIGNAL: !time!
echo.

:: rapid-fire beeps
for /l %%a in (1,1,10) do <nul set /p=^G

goto loop