import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class DialogueBoxWidget extends StatefulWidget {
  final String characterName;
  final String dialogueText;
  final void Function(String?) nextDialogue;
  final bool hasChoices;
  final bool showArrow;

  const DialogueBoxWidget({
    Key? key,
    required this.characterName,
    required this.dialogueText,
    required this.nextDialogue,
    this.hasChoices = false,
    this.showArrow = false,
  }) : super(key: key);

  @override
  _DialogueBoxWidgetState createState() => _DialogueBoxWidgetState();
}

class _DialogueBoxWidgetState extends State<DialogueBoxWidget> {
  String _visibleText = '';
  bool _isTyping = false;
  int _tapCount = 0;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _tap;
    _startTypewriter();
  }

  @override
  void didUpdateWidget(covariant DialogueBoxWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.dialogueText != widget.dialogueText) {
      _startTypewriter();
      _tapCount = 0;
    }
  }

  Future<void> _startTypewriter() async {
    _isTyping = false;
    await Future.delayed(const Duration(milliseconds: 50));

    if (!mounted) return;

    setState(() {
      _visibleText = ''; // Clearsssss the previous text
    });
    _isTyping = true;

    for (int i = 0; i < widget.dialogueText.length; i++) {
      if (!_isTyping || !mounted) {
        break;
      }
      await Future.delayed(const Duration(milliseconds: 40));
      if (mounted) {
        setState(() {
          _visibleText = widget.dialogueText.substring(0, i + 1);
        });
      }
    }

    _isTyping = false; // Finished typing
  }

  Future<void> noTypewriter() async {
    _isTyping = false;
    await Future.delayed(const Duration(milliseconds: 50));

    if (!mounted) return;

    setState(() {
      _visibleText = widget.dialogueText;
    });
  }

  void _tap() {
    if (widget.hasChoices == false) {
      if (_isTyping) {
        setState(() {
          _visibleText = widget.dialogueText;
          _isTyping = false;
          noTypewriter();
        });
      } else {
        widget.nextDialogue(null);
      }
    } 
  }

  @override
  void dispose() {
    _isTyping = false;
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: _tap,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/dialogue/dialogue-box.png', // I changed the dialogue box image here with no opacity
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
                    if (widget.characterName.trim().isNotEmpty) ...[
                      Text(
                        widget.characterName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'IBMPlexMono',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 1),
                      Container(height: 1, color: Colors.black),
                      const SizedBox(height: 5),
                    ],
                    Text(
                      _visibleText,
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
                right: 3,
                bottom: 5,
                child: Row(
                  children: [
                    Visibility(
                      visible: !widget.hasChoices && !_isTyping,
                      child: IconButton(
                        icon: Image.asset('assets/icons/nextBT.png'),
                        onPressed: () => widget.nextDialogue(null),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
