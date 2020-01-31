# ponkan3-plugin-audio-spectrum
Audio spectrum plugin for Ponkan3

[pon-audio-spectrum](https://github.com/studiomikan/pon-audio-spectrum) を用いて、
[Ponkan3](https://github.com/studiomikan/ponkan3) 製のゲームでオーディオスペクトラムを表示するプラグインです。

デモ: https://studiomikan.github.io/ponkan3-plugin-audio-spectrum/

## はじめかた

```plain
# プラグインの読み込み
;call file: "audio-spectrum-plugin.pon"

# 音声を読み込み
;loadsound buf: 0, file: "sound/ohka_japan.mp3"

# オーディオスペクトラムの初期化
# buf: 対象の音声バッファ
# lay: スペクトラムを表示するレイヤー
;init_audio_spectrum buf: 0, lay: 30, type: "solid", options: {}

# オーディオスペクトラムを表示するレイヤーの位置などを指定
;layopt lay: 30, x: 200, y: 200, visible: true

# 音声を再生
;playsound buf: 0

再生中（クリックで停止）。
;p
;stopsound buf: 0

# 再生が終わったらオーディオスペクトラムを解放
;free_audio_spectrum
```

## ビジュアライザーの種類

`init_audio_spectrum` の `type` で、オーディオスペクトラムの見た目を変更することができます。

`"solid"` または `"block"` が指定可能です。
実際の見た目は
[pon-audio-spectrumのREADME](https://github.com/studiomikan/pon-audio-spectrum#%E3%83%93%E3%82%B8%E3%83%A5%E3%82%A2%E3%83%A9%E3%82%A4%E3%82%B6%E3%83%BC%E3%81%AE%E7%A8%AE%E9%A1%9E)
を参照してください。

## オプション

`init_audio_spectrum` の `options` で、追加のオプションを指定できます。

```plain
;init_audio_spectrum buf: 0, lay: 30, type: "solid", options: { barWidth: 20 }
```

指定できるオプションの詳細は
[pon-audio-spectrumのREADME](https://github.com/studiomikan/pon-audio-spectrum#%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3)
を参照してください。

## External Libraries used by ponkan3-plugin-audio-spectrum

### Fonts

- [GenShinGothic](http://jikasei.me/font/genshin/) is licensed under [SIL Open Font License 1.1](http://scripts.sil.org/OFL)
  - © 2015 自家製フォント工房, © 2014, 2015 Adobe Systems Incorporated, © 2015 M+ FONTS PROJECT

### Sounds

- `ohka_japan.mp3` is composed by [SHW](http://shw.in)

## License

ponkan3-plugin-audio-spectrum is released under the MIT License.
