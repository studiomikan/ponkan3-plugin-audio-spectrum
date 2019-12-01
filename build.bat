@echo off
cd /d %~dp0
git clone git@github.com:okayumoka/pon-audio-spectrum.git libs/pon-audio-spectrum
node build.js > dist/audio-spectrum-plugin.pon
pause
@echo on
