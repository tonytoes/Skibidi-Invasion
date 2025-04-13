import 'package:flutter/material.dart';

class ChapterSettings extends StatelessWidget {
  const ChapterSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg/ruins_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}