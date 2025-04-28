import 'package:flutter/material.dart';
import 'dart:ui';

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
            Positioned(
              top: MediaQuery.of(context).size.height * 0.001,
              left: MediaQuery.of(context).size.width * 0.01,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/icons/back-double-arrow.png',
                      width: 24, // Set width
                      height: 24, // Set height
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Back',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ],
                ),
              ),
            ),

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
