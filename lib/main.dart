import 'package:flutter/material.dart';
import 'scenario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 1.0;
  bool _isFading = false;

  void _handlePlay() async {
    if (_isFading) return;
    setState(() {
      _opacity = 0.0;
      _isFading = true;
    });

    await Future.delayed(const Duration(milliseconds: 1000));

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const ScenarioScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 1200),
        curve: Curves.easeInOut,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg/titlescreen_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2,
              left: 0,
              right: 0,
              child: Center(
                child: TextButton(
                  onPressed: _handlePlay,
                  child: const Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
