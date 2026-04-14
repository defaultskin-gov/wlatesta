@echo off
if not "%1"=="max" start /max cmd /c "%~f0" max & exit

title CHAOS GODMODE FULLSCREEN-ish
mode con: cols=160 lines=50
setlocal enabledelayedexpansion

:loop
set /a col=%random% %% 16
color !col!
cls

for /l %%i in (1,1,40) do (
    echo !random!!random!!random!!random!!random!!random!!random!
)

for /l %%a in (1,1,10) do <nul set /p=^G

goto loop