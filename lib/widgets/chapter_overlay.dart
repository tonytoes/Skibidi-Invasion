import 'package:flutter/material.dart';
import 'dart:ui';
import '../settings/settings_scenario.dart';

void _openMenu(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const MenuScreen()),
  );
}

class ChapterOverlay extends StatelessWidget {
  const ChapterOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.7),
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Stack( // Use Stack directly for positioning
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 800,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Currently On:',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Divider(color: Colors.white, height: 36, thickness: 1.5),
                    _chapterButton(context, 'Chapter 1'),
                    _chapterButton(context, 'Chapter 2'),
                    _chapterButton(context, 'Chapter 3'),
                    _chapterButton(context, 'Chapter 4'),
                    _chapterButton(context, 'Final Chapter'),
                    SizedBox(height: 50),
                    TextButton(
                      onPressed: () {
                        _openMenu(context);
                      },
                      child: const Text(
                        'Back',
                        style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'JosefinSans',fontWeight: FontWeight.w400,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chapterButton(BuildContext context, String chapterTitle) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        chapterTitle,
        style: const TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
