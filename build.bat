@echo off
cd /d %~dp0
git clone git@github.com:okayumoka/pon-audio-spectrum.git libs\pon-audio-spectrum
mkdir dist
node build.js > dist\audio-spectrum-plugin.pon
@echo on
