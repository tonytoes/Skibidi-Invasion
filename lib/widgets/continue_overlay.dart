  import 'dart:ui';
  import 'package:flutter/material.dart';
  import '../main.dart';
  import 'package:page_transition/page_transition.dart';
  import '../settings/settings_scenario.dart';

  void _openMenu(BuildContext context) {
    Navigator.pushReplacement(
      context,
     PageTransition(
     type: PageTransitionType.fade,
     duration: const Duration(milliseconds: 500),
     child: const MenuScreen(),
      ),
    );
  }

  void _openHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds: 500),
      child: const HomeScreen(),
      ),
    );
  }

  class ContinueOverlay extends StatelessWidget {
    const ContinueOverlay({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.7),
              ),
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Returning to Home Screen will reset you to the latest checkpoint of the story',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'JosefinSans',fontWeight: FontWeight.w400,),
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      onPressed: () {
                        _openHome(context);
                        bgmPlayer.startBackgroundMusic(); 
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'JosefinSans',fontWeight: FontWeight.w400, ),
                      ),
                    ),
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
          ),
        ),
      );
    }
  }
