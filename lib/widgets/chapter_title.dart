import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import '../scenes/scenario.dart';
import 'dart:async';

class ChapterIntroOverlay extends StatefulWidget {
  final int chapterIndex;
  final String chapterTitle;
  final AudioPlayer sfxPlayer;
  final AudioPlayer bgmPlayer;
  final String? autoSfx;
  final String? autoBgm;

  const ChapterIntroOverlay({
    Key? key,
    required this.chapterIndex,
    required this.chapterTitle,
    required this.sfxPlayer,
    required this.bgmPlayer,
    this.autoSfx,
    this.autoBgm,
  }) : super(key: key);

  @override
  _ChapterIntroOverlayState createState() => _ChapterIntroOverlayState();
}

class _ChapterIntroOverlayState extends State<ChapterIntroOverlay> {
  double _opacity = 0.0;


  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() {
          _opacity = 1.0;
        });
      }
    });

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) => ScenarioScreen(
              index: widget.chapterIndex,
              sfxPlayer: widget.sfxPlayer,
              bgmPlayer: widget.bgmPlayer,
              autoSfx: widget.autoSfx,
              autoBgm: widget.autoBgm,
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          curve: Curves.easeIn,
          child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            widget.chapterTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontFamily: 'Obafen',
              fontWeight: FontWeight.bold,
              ),
            maxLines: 3,
            ),
          ),
        ),
      ),
    );
  }
}