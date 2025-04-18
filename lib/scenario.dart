import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'hamburger.dart';
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
  final List<String> _dialogueLines = [
    "Wha-?!!",
    "Hey kid you alright?"
  ];
  int _currentLine = 0;

  void _nextDialogue() {
    setState(() {
      if (_currentLine < _dialogueLines.length - 1) {
        _currentLine++;
      } else {
        _currentLine = 0; // You can loop back to the first dialogue or stop.
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
              onPressed: () => _openMenu(context),
              child: Image.asset(
                'assets/icons/speaker.png',
                color: Colors.white,
                width: 40,
                height: 40,
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: ElevatedButton(
              onPressed: () => _openMenu(context),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 40,
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children:[
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
            alignment:Alignment.bottomCenter,
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
