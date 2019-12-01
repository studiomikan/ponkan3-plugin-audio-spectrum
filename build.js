const fs = require('fs');

let pon = fs.readFileSync("./src/audio-spectrum-plugin.pon", "utf-8");
let pas = fs.readFileSync("./libs/pon-audio-spectrum/dist/pon-audio-spectrum.js", "utf-8");

let text = pon.replace(/\/\/@include PonAudioSpectrum/, pas);

console.log(text);
