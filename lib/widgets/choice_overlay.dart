import 'package:flutter/material.dart';

class ChoiceButton extends StatefulWidget {
  final String choiceText;
  final VoidCallback onPressed;
  final bool isCorrect;

  const ChoiceButton({
    super.key,
    required this.choiceText,
    required this.onPressed,
    required this.isCorrect,
  });

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  bool wasTapped = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    if (!wasTapped) {
      backgroundColor = Colors.black.withOpacity(0.3);
    } else if (widget.isCorrect) {
      backgroundColor = Colors.green;
    } else {
      backgroundColor = Colors.red;
    }

    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            setState(() {
              wasTapped = true; // Change color immediately
            });

            await Future.delayed(const Duration(milliseconds: 800));
            widget.onPressed();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
              widget.choiceText,
              style: const TextStyle(
                  fontSize: 16
              ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
