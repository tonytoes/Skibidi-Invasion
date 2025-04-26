import 'package:flutter/material.dart';


class DialogueBoxWidget extends StatelessWidget {
  final String characterName;
  final String dialogueText;
  final void Function(String?) nextDialogue;

  const DialogueBoxWidget({
    Key? key,
    required this.characterName,
    required this.dialogueText,
    required this.nextDialogue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/dialogue/dialogue-box2.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: 220,
            ),
            Positioned(
              left: 30,
              top: 25,
              right: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (characterName.trim().isNotEmpty) ...[
                    Text(
                      characterName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'IBMPlexMono',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      height: 1,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 5),
                  ],
                  Text(
                    dialogueText,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'IBMPlexMono',
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                ],
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
                onPressed: () => nextDialogue(null),
                iconSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
