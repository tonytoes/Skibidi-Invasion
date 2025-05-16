import 'package:flutter/material.dart';
import '../main.dart';
import 'package:page_transition/page_transition.dart';

void _openHome(BuildContext context)  {
  Navigator.pushReplacement(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds: 500),
      child: const HomeScreen(),
    ),
  );
}

class CreditChallengeScreen extends StatelessWidget {
  const CreditChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  children: [
                    Text(
                      'Congrats you had finish this level!',
                      style: TextStyle(color: Colors.white, fontSize: 22  ),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      'assets/icons/mem-dev.png',
                      width: 100,
                      height: 100,
                    ),
                  ]
              ),
              const SizedBox(height: 200),

              Column(
                children: [
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 22  ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      _openHome(context);
                    },
                    child: Image.asset(
                      'assets/icons/return-arrow.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
