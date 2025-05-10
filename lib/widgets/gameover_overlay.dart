import 'package:flutter/material.dart';
import '../scenes/scenario.dart';
import '../main.dart';

void _openHome(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
}

class GameOverOverlay extends StatelessWidget {
  final VoidCallback onRestart;

  const GameOverOverlay({Key? key, required this.onRestart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 750,
        decoration: BoxDecoration(
         image: const DecorationImage(
            image: AssetImage('assets/images/bg/gameover.png'),
            fit: BoxFit.cover,
         ),
        ),
        child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "GAME OVER",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onRestart,
                  style: ElevatedButton.styleFrom( // design here
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                      "RETRY",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                    ),
                  ),
                ElevatedButton(
                  onPressed: () {
                    _openHome(context);
                  },
                  style: ElevatedButton.styleFrom( // design here
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    "HOME",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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