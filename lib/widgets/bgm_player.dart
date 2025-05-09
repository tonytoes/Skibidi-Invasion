import 'package:just_audio/just_audio.dart';

class BGMPlayer {
  static final BGMPlayer _instance = BGMPlayer._internal();
  factory BGMPlayer() => _instance;

  late final AudioPlayer _bgmPlayer;

  bool _isPlaying = false;

  BGMPlayer._internal() {
    _bgmPlayer = AudioPlayer();
  }

  AudioPlayer get player => _bgmPlayer;


  Future<void> startBackgroundMusic() async {
    if (_isPlaying) return;
    await _bgmPlayer.setLoopMode(LoopMode.one);
    await _bgmPlayer.setVolume(0.0);

    try {
      await _bgmPlayer.setAudioSource(AudioSource.asset('assets/audio/bgm/bgm-fantasy.mp3'));
      await _bgmPlayer.play();
    } catch (e) {
      print('BGMPlayer startBackgroundMusic: Error setting source and playing: $e');
      // Provide more specific error message for asset loading
      if (e.toString().contains('Unable to load asset')) {
        print('Check if audio/sfx/sound/bgm.mp3 exists and is in pubspec.yaml assets.');
      }
    }
    // *** END ADAPTATION ***

    _isPlaying = true; // Mark as playing

    // Fade-in logic (this part is generally the same)
    // Added checks to stop fading if the player stops unexpectedly
    for (double vol = 0.0; vol <= 1.0; vol += 0.1) {
      if (_bgmPlayer.processingState == ProcessingState.idle || _bgmPlayer.processingState == ProcessingState.completed || _bgmPlayer.playing == false) {
        break; // Stop fading if player is not actively playing
      }
      await Future.delayed(const Duration(milliseconds: 200));
      await _bgmPlayer.setVolume(vol);
    }
    // Ensure full volume if fade completes successfully
    if (_bgmPlayer.processingState != ProcessingState.idle && _bgmPlayer.processingState != ProcessingState.completed && _bgmPlayer.playing == true) {
      await _bgmPlayer.setVolume(1.0);
    }
  }


  Future<void> stopBackgroundMusic() async {
    if (!_isPlaying) return;

    for (double vol = 1.0; vol >= 0.0; vol -= 0.1) {
      if (_bgmPlayer.processingState == ProcessingState.idle || _bgmPlayer.processingState == ProcessingState.completed || _bgmPlayer.playing == false) {
        break;
      }
      await Future.delayed(const Duration(milliseconds: 200));
      await _bgmPlayer.setVolume(vol);
    }


    await _bgmPlayer.stop();
    _isPlaying = false;
  }


  Future<void> setVolume(double volume) async {
    try {
      await _bgmPlayer.setVolume(volume);
    } catch (e) {
      print('BGMPlayer setVolume: Error setting volume: $e');
    }
  }

  void dispose() {
    _bgmPlayer.dispose();
    _isPlaying = false;
  }
}