import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BGMPlayer {
  static final BGMPlayer _instance = BGMPlayer._internal();
  factory BGMPlayer() => _instance;

  late final AudioPlayer _bgmPlayer;

  BGMPlayer._internal() {
    _bgmPlayer = AudioPlayer();
  }

  AudioPlayer get player => _bgmPlayer;

  Future<void> startBackgroundMusic() async {
    if (_bgmPlayer.playing) {
      return;
    }

    if (_bgmPlayer.processingState == ProcessingState.ready) {
      await _bgmPlayer.play();
      return;
    }

    try {
      final prefs = await SharedPreferences.getInstance();
      final double musicVolume = prefs.getDouble('musicVolume') ?? 0.5;
      await _bgmPlayer.setAudioSource(AudioSource.asset('assets/audio/bgm/haha.mp3')); // Change the bgm here
      _bgmPlayer.setLoopMode(LoopMode.one);
      await _bgmPlayer.setVolume(musicVolume);
      await _bgmPlayer.play();
    } catch (e) {
    }
  }

  Future<void> fadeInBackgroundMusic() async {
    if (_bgmPlayer.playing || _bgmPlayer.processingState == ProcessingState.ready) {
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    final double targetVolume = prefs.getDouble('musicVolume') ?? 0.5;

    try {
      await _bgmPlayer.setAudioSource(AudioSource.asset('assets/audio/bgm/haha.mp3')); // Change the bgm here
      _bgmPlayer.setLoopMode(LoopMode.one);
      await _bgmPlayer.setVolume(0.0);
      await _bgmPlayer.play();

      for (double vol = 0.0; vol <= targetVolume; vol += 0.1) {
        if (!_bgmPlayer.playing) {
          break;
        }
        await Future.delayed(const Duration(milliseconds: 200));
        await _bgmPlayer.setVolume(vol);
      }
      if (_bgmPlayer.playing) {
        await _bgmPlayer.setVolume(targetVolume);
      }
    } catch (e) {
    }
  }

  Future<void> stopBackgroundMusic() async {
    if (!_bgmPlayer.playing && _bgmPlayer.processingState == ProcessingState.idle) {
      return;
    }

    for (double vol = _bgmPlayer.volume; vol >= 0.0; vol -= 0.1) {
      if (!_bgmPlayer.playing && _bgmPlayer.processingState == ProcessingState.idle) {
        break;
      }
      await Future.delayed(const Duration(milliseconds: 200));
      await _bgmPlayer.setVolume(vol);
    }
    await _bgmPlayer.stop();
  }

  Future<void> setVolume(double volume) async {
    try {
      await _bgmPlayer.setVolume(volume);
    } catch (e) {
    }
  }

  void dispose() {
    _bgmPlayer.dispose();
  }
}