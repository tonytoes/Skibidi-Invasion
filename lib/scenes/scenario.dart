import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../settings/menu_scenario.dart';
import '../widgets/dialogue_overlay.dart';
import '../data/scenario_data.dart';
import '../widgets/choice_overlay.dart';

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
  bool pressed = true;
  int _currentLine = 0;
  String _backgroundImage = ScenarioData.scenarioData[0]['backgroundImage'];
  String _currentCharacterName = ScenarioData.scenarioData[0]['characterName'];
  String? _currentCharacterSprite =
      ScenarioData.scenarioData[0]['characterSprite'];
  List<Map<String, dynamic>> _currentChoices = [];

  final List<String> characterSprites = [
    'assets/images/characters/pose1.png'
  ];
  @override
  void initState() {
    super.initState();
    _loadInitialChoices();

    Future.delayed(Duration.zero, () {
      for (String spritePath in characterSprites) {
        precacheImage(AssetImage(spritePath), context);
      }
    });
  }

  void _loadInitialChoices() {
    _currentChoices = ScenarioData.scenarioData[_currentLine]['choices'] ?? [];
  }

  void _nextDialogue(String? selectedChoice) {
    setState(() {
      if (selectedChoice == null) {
        if (_currentLine < ScenarioData.scenarioData.length - 1) {
          _currentLine++;
        } else {
          _currentLine = 0;
        }
      } else {
        for (final choice in _currentChoices) {
          if (choice['text'] == selectedChoice) {
            _currentLine = choice['nextDialogueIndex'] as int;
            _backgroundImage =
                choice['nextBackgroundImage'] ?? _backgroundImage;
            _currentCharacterName =
                choice['nextCharacterName'] ?? _currentCharacterName;
            _currentCharacterSprite =
                choice['nextCharacterSprite'] ?? _currentCharacterSprite;
            break;
          }
        }
      }

      _backgroundImage = ScenarioData.scenarioData[_currentLine]['backgroundImage'] ?? _backgroundImage;
      _currentCharacterName = ScenarioData.scenarioData[_currentLine]['characterName'] ?? _currentCharacterName;
      // Fix: Check for the string 'null' and convert it to null.
      _currentCharacterSprite = ScenarioData.scenarioData[_currentLine]['characterSprite'] == 'null'
          ? null
          : ScenarioData.scenarioData[_currentLine]['characterSprite'];
      _currentChoices = ScenarioData.scenarioData[_currentLine]['choices'] ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(CircleBorder()),
                padding: WidgetStateProperty.all(const EdgeInsets.all(5)),
                backgroundColor: WidgetStateProperty.all(Colors.black),
                overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
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
                padding: WidgetStateProperty.all(const EdgeInsets.all(5)),
                backgroundColor: WidgetStateProperty.all(Colors.black),
                overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),

          if (_currentCharacterSprite != null  && _currentCharacterSprite != 'null')
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.27,
              left: MediaQuery.of(context).size.width * 0.52,
              child: Image.asset(
                _currentCharacterSprite!,
                width: 200,
                height: 300,
                fit: BoxFit.contain,
              ),
            )
          else
            const SizedBox.shrink(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DialogueBoxWidget(
                    characterName: _currentCharacterName,
                    dialogueText: ScenarioData.scenarioData[_currentLine]['dialogue'],
                    nextDialogue: _nextDialogue,
                  ),
                  if (_currentChoices.isNotEmpty) _buildChoiceOptions(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChoiceOptions(BuildContext context) {
    final choices = _currentChoices;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:
          choices.map((choiceData) {
            return ChoiceButton(
              choiceText: choiceData['text']!,
              onPressed: () {
                _nextDialogue(choiceData['text']);
              },
            );
          }).toList(),
    );
  }
}
