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
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Customize the button color
        foregroundColor: Colors.white, // Customize the text color
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
      ),
      child: Text(choiceText, style: const TextStyle(fontSize: 16)),
    );
  }
}
