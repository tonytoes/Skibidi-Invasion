import 'package:flutter/material.dart';

class ChoiceButton extends StatefulWidget {
  final String choiceText;
  final VoidCallback onPressed;
  final bool? isCorrect;
  final bool resetColor;

  const ChoiceButton({
    super.key,
    required this.choiceText,
    required this.onPressed,
    this.isCorrect,
    this.resetColor = false,
  });

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  bool wasTapped = false;

  @override
  void didUpdateWidget(covariant ChoiceButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.resetColor) {
      wasTapped = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    if (!wasTapped) {
      backgroundColor = Colors.black.withValues(alpha: 0.3);
    } else {
      if (widget.isCorrect == null) {
        backgroundColor = const Color.fromARGB(
          255,
          61,
          213,
          240,
        ).withValues(alpha: 0.5);
      } else if (widget.isCorrect == true) {
        backgroundColor = Colors.green;
      } else {
        backgroundColor = Colors.red;
      }
    }

    return SizedBox(
      width: 340,
      height: 50,
      child: ElevatedButton(
        onPressed: () async {
          setState(() {
            wasTapped = true;
          });

          await Future.delayed(const Duration(milliseconds: 100));
          widget.onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          widget.choiceText,
          style: const TextStyle(fontSize: 16),
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
