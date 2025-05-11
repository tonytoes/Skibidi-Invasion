import 'package:just_audio/just_audio.dart';

Future<void> playTransientSFX(String assetPath) async {
  final player = AudioPlayer();
  try {
    await player.setAudioSource(AudioSource.asset(assetPath));
    await player.setVolume(1.0);
    await player.play();
    player.playerStateStream
        .firstWhere((state) => state.processingState == ProcessingState.completed)
        .then((_) => player.dispose());
  } catch (e) {
    await player.dispose();
  }
}

