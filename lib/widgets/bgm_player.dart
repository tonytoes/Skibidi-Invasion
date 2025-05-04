import 'package:audioplayers/audioplayers.dart';

class BGMPlayer {
  static final BGMPlayer _instance = BGMPlayer._internal();
  factory BGMPlayer() => _instance;

  late final AudioPlayer _bgmPlayer;
  bool _isInitialized = false;
  bool _isPlaying = false;

  BGMPlayer._internal() {
    _bgmPlayer = AudioPlayer();
    _bgmPlayer.setAudioContext(AudioContext(
      android: AudioContextAndroid(
        isSpeakerphoneOn: false,
        stayAwake: true,
        contentType: AndroidContentType.music,
        usageType: AndroidUsageType.media,
        audioFocus: AndroidAudioFocus.none,
      ),
    ));
  }

  Future<void> startBackgroundMusic() async {
    if (_isPlaying) return;

    await _bgmPlayer.setReleaseMode(ReleaseMode.loop);
    await _bgmPlayer.setVolume(0.0); // Start silent
    await _bgmPlayer.play(AssetSource('audio/sfx/sound/bgm.mp3'));
    _isPlaying = true;

    // Fade-in
    for (double vol = 0.0; vol <= 1.0; vol += 0.1) {
      await Future.delayed(const Duration(milliseconds: 200));
      _bgmPlayer.setVolume(vol);
    }
  }

  Future<void> stopBackgroundMusic() async {
    if (!_isPlaying) return;

    // Fade-out
    for (double vol = 1.0; vol >= 0.0; vol -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 200));
      _bgmPlayer.setVolume(vol);
    }

    await _bgmPlayer.stop();
    _isPlaying = false;
  }

  void dispose() {
    _bgmPlayer.dispose();
    _isInitialized = false;
    _isPlaying = false;
  }
}
