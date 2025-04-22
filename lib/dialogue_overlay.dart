import 'package:flutter/material.dart';

class DialogueBoxWidget extends StatelessWidget {
  final String text;
  final VoidCallback _nextDialogue;

  const DialogueBoxWidget({
    super.key,
    required this.text,
    required VoidCallback nextDialogue,
  }) : _nextDialogue = nextDialogue;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/dialogue/dialogue-box2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 25,
              right: 30,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'IBMPlexMono',
                  color: Colors.black,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: IconButton(
                icon: Image.asset(
                  'assets/icons/double-arrow.png',
                  color: Colors.black,
                ),
                onPressed: _nextDialogue,
                iconSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
