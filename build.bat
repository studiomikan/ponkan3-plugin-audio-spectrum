@echo off
cd /d %~dp0
git clone git@github.com:okayumoka/pon-audio-spectrum.git libs\pon-audio-spectrum
cd libs\pon-audio-spectrum
git pull
cd ../../
mkdir dist
node build.js > dist\audio-spectrum-plugin.pon
copy dist\audio-spectrum-plugin.pon docs\gamedata\audio-spectrum-plugin.pon
@echo on
