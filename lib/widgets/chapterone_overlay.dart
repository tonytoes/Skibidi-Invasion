import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For SystemChrome
import 'package:just_audio/just_audio.dart'; // Import just_audio
import '../scenes/scenario.dart';
import 'dart:async'; // Import for Timer

class ChapterIntroOverlay extends StatefulWidget {
  final int chapterIndex; // The index in scenarioData to start the chapter
  final String chapterTitle; // The title to display, e.g., "Chapter 1"
  final AudioPlayer sfxPlayer; // Pass the SFX player
  final AudioPlayer bgmPlayer; // Pass the BGM player

  const ChapterIntroOverlay({
    Key? key,
    required this.chapterIndex,
    required this.chapterTitle,
    required this.sfxPlayer,
    required this.bgmPlayer,
  }) : super(key: key);

  @override
  _ChapterIntroOverlayState createState() => _ChapterIntroOverlayState();
}

class _ChapterIntroOverlayState extends State<ChapterIntroOverlay> {
  double _opacity = 0.0; // Start fully transparent

  @override
  void initState() {
    super.initState();
    // Hide UI elements like status bar and navigation bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // Start the fade-in animation after a short delay
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() {
          _opacity = 1.0; // Fade in the text
        });
      }
    });

    // After the fade-in and a short display time, navigate to ScenarioScreen
    Timer(const Duration(seconds: 3), () { // Display the intro for 3 seconds (adjust as needed)
      if (mounted) {
        // Navigate to ScenarioScreen, replacing the intro overlay
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500), // Transition out duration
            pageBuilder: (context, animation, secondaryAnimation) => ScenarioScreen(
              index: widget.chapterIndex, // Pass the starting index for the chapter
              sfxPlayer: widget.sfxPlayer, // Pass SFX player
              bgmPlayer: widget.bgmPlayer, // Pass BGM player
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              // Optional: Add a fade-out transition for the intro screen itself
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    // Ensure the immersive mode is reset when the screen is disposed
    // This might need adjustment based on your overall UI mode management
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge); // Example: Revert to showing bars
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Solid black background
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 1), // Fade-in duration
          curve: Curves.easeIn,
          child: Text(
            widget.chapterTitle, // Display the chapter title
            style: const TextStyle(
              fontSize: 48, // Adjust font size as needed
              color: Colors.white,
              fontFamily: 'Obafen', // Use your desired font
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}