import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'menu.dart';
import 'dialogue_overlay.dart';

void _openMenu(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (context) => const MenuScreen(),
  );
}

class ScenarioScreen extends StatefulWidget {
  const ScenarioScreen({super.key});

  @override
  State<ScenarioScreen> createState() => _ScenarioScreenState();
}

class _ScenarioScreenState extends State<ScenarioScreen> {
  bool pressed = false;
  final List<String> _dialogueLines = ["Wha-?!!", "Hey kid you alright?"];
  int _currentLine = 0;

  void _nextDialogue() {
    setState(() {
      if (_currentLine < _dialogueLines.length - 1) {
        _currentLine++;
      } else {
        _currentLine = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(CircleBorder()),
                padding: WidgetStateProperty.all(EdgeInsets.all(5)),
                backgroundColor: WidgetStateProperty.all(Colors.black),
                overlayColor: WidgetStateProperty.resolveWith<Color?>((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.black; //change
                  }
                  return null;
                }),
              ),
              child: Image.asset(
                pressed == true
                    ? 'assets/icons/speaker.png'
                    : 'assets/icons/speaker-off.png',
                color: Colors.white,
                width: 40,
                height: 40,
              ),
              onPressed: () {
                setState(() {
                  pressed = !pressed;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: ElevatedButton(
              onPressed: () => _openMenu(context),
              style: ButtonStyle(
                shape: WidgetStateProperty.all(CircleBorder()),
                padding: WidgetStateProperty.all(EdgeInsets.all(5)),
                backgroundColor: WidgetStateProperty.all(Colors.black),
                overlayColor: WidgetStateProperty.resolveWith<Color?>((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.black;
                  }
                  return null;
                }),
              ),
              child: Icon(Icons.menu, color: Colors.white, size: 40),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg/Downtown-Night.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: DialogueBoxWidget(
                text: _dialogueLines[_currentLine],
                nextDialogue: _nextDialogue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
