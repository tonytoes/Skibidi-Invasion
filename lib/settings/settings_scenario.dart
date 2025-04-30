import 'package:flutter/material.dart';
import 'dart:ui';
import '../settings/settings.dart';
import '../settings/settings_chapters.dart';
import '../widgets/continue_overlay.dart';
import '../widgets/chapter_overlay.dart';
import '../settings/settings_more.dart';

void _openContinue(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const ContinueOverlay()),
  );
}

void _openSettings(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const SettingsMoreScreen()),
  );
}

void _openChapters(BuildContext context) {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const ChapterOverlay()),
  );
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
                      _openContinue(context);
                    },
                    child: Text(
                      'Return to Home Screen',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      _openChapters(context);
                    },
                    child: Text(
                      'Chapters',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      _openSettings(context);
                    },
                    child: Text(
                      'More Settings',
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
