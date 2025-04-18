import 'package:flutter/material.dart';

class DialogueBoxWidget extends StatelessWidget {
  final String text;
  final VoidCallback _nextDialogue;

  const DialogueBoxWidget({Key? key, required this.text, required VoidCallback nextDialogue})
      : _nextDialogue = nextDialogue,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            // Background box with image
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/dialogue/dialogue-box.png'),
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
                  fontSize: 18,
                  fontFamily:'IBMPlexMono',
                  color: Colors.black,
                  height: 1,
                ),
              ),
            ),
            // Positioned icon button at the bottom-right of the box
            Positioned(
              right: 16,
              bottom: 16,
              child: IconButton(
                icon: Image.asset('assets/icons/double-arrow.png', color: Colors.black),
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
