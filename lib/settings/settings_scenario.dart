import 'package:flutter/material.dart';
import 'dart:ui';
import '../settings/settings.dart';
import '../settings/settings_chapters.dart';
import '../widgets/continue_overlay.dart';
import 'package:page_transition/page_transition.dart';
import '../widgets/chapter_overlay.dart';
import '../settings/settings_more.dart';
import 'package:just_audio/just_audio.dart';



void _openContinue(BuildContext context, AudioPlayer sfxPlayer)  {
  Navigator.pushReplacement(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds: 500),
      child: ContinueOverlay(sfxPlayer: sfxPlayer),
    ),
  );

}

void _openSettings(BuildContext context, AudioPlayer sfxPlayer) {
  Navigator.pushReplacement(
  context,
  PageTransition(
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds: 500),
      child: SettingsMoreScreen(sfxPlayer: sfxPlayer),
    )
  );
}

void _openChapters(BuildContext context, AudioPlayer sfxPlayer) {
  Navigator.pushReplacement(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds: 500),
      child: ChapterOverlay(sfxPlayer: sfxPlayer),
    ),
  );
}

class MenuScreen extends StatelessWidget {
  final AudioPlayer sfxPlayer;

  MenuScreen({super.key, required this.sfxPlayer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.7),
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 800,
            color: Colors.transparent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),

                  Divider(color: Colors.white, height: 36, thickness: 1.5),

                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Continue',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      _openContinue(context, sfxPlayer);

                    },
                    child: Text(
                      'Back to Home',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      _openChapters(context, sfxPlayer);
                    },
                    child: Text(
                      'Chapters',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      _openSettings(context, sfxPlayer);
                    },
                    child: Text(
                      'Settings',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
