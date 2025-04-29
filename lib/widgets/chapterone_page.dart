import 'package:flutter/material.dart';

class Chapter1Screen extends StatelessWidget {
  const Chapter1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text(
          "Chapter 1 - The Grammar Epidemic: The Battle Begins",
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      )
      ),
    );
  }
}