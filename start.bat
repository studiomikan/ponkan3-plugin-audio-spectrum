@echo off
cd /d %~dp0
call npm install
call build.bat
copy dist\audio-spectrum-plugin.pon docs\gamedata\audio-spectrum-plugin.pon
call npm start
pause
@echo on
