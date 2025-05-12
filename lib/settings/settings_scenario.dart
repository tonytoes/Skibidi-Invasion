import 'package:flutter/material.dart';
import 'dart:ui';
import '../settings/settings_audio.dart';
import '../settings/select_chapters.dart';
import '../widgets/continue_overlay.dart';
import 'package:page_transition/page_transition.dart';
import '../widgets/chapter_overlay.dart';
import '../settings/settings_audio_scenario.dart';
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
            color: Colors.transparent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  ElevatedButton(
                    onPressed: () {
                      _openContinue(context, sfxPlayer);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      minimumSize: Size(300,50),
                      side: BorderSide(
                          color: Colors.white,
                          width: 2.0
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Return Home',
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Mplus', fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _openChapters(context, sfxPlayer);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      minimumSize: Size(300,50),
                      side: BorderSide(
                          color: Colors.white,
                          width: 2.0
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Chapters',
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Mplus', fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _openSettings(context, sfxPlayer);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      minimumSize: Size(300,50),
                      side: BorderSide(
                          color: Colors.white,
                          width: 2.0
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Sounds',
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Mplus', fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 200),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,

                      minimumSize: Size(300,50),
                      side: BorderSide(
                          color: Colors.white,
                          width: 2.0
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Close',
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'MPlus', fontWeight: FontWeight.w400),
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
