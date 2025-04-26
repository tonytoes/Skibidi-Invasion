import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String choiceText;
  final VoidCallback onPressed;

  const ChoiceButton({
    super.key,
    required this.choiceText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center vertically within the Column
      crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally within the Column
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black.withValues(alpha: 0.1),

            foregroundColor: Colors.white, // Customize the text color
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: Text(choiceText, style: const TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}
