import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../settings/scenario_menu.dart';
import '../widgets/dialogue_overlay.dart';
import '../data/scenario_data.dart';
import '../widgets/choice_overlay.dart';
import '../widgets/gameover_overlay.dart';
import '../widgets/chapterone_page.dart';

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
  int _currentLine = 0;
  int _lives = 3;
  int _lastQuestionIndex = 0;
  bool pressed = true;
  bool _showLives = true;
  bool _resetChoiceColors = false;
  String _backgroundImage = ScenarioData.scenarioData[0]['backgroundImage'];
  String _currentCharacterName = ScenarioData.scenarioData[0]['characterName'];
  String? _currentCharacterSprite =
  ScenarioData.scenarioData[0]['characterSprite'];

  List<String> _heartImages = [
    'assets/icons/hearts.png',
    'assets/icons/hearts.png',
    'assets/icons/hearts.png'
  ];

  List<Map<String, dynamic>> _currentChoices = [];
  bool _isGameOver = false;

  final List<String> characterSprites = ['assets/images/characters/pose1.png'];

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
    _showLives = ScenarioData.scenarioData[_currentLine]['showLives'] ?? true;
  }

  void _resetGame() {
    setState(() {
      _currentLine = _lastQuestionIndex > 0 ? _lastQuestionIndex : 0;
      _lives = 3;
      _isGameOver = false;
      _backgroundImage = ScenarioData.scenarioData[_currentLine]['backgroundImage'];
      _currentCharacterName = ScenarioData.scenarioData[_currentLine]['characterName'];
      _currentCharacterSprite = ScenarioData.scenarioData[_currentLine]['characterSprite'];
      _loadInitialChoices();
      _heartImages = [
        'assets/icons/hearts.png',
        'assets/icons/hearts.png',
        'assets/icons/hearts.png'
      ];
    });
  }

  void _nextDialogue(String? selectedChoice) {
    setState(() {
      if (_isGameOver) {
        return;
      }

      bool isCorrectChoice = false;
      int nextLine = _currentLine;
      bool incorrectChoiceMade = false;

      if (selectedChoice == null) {
        if (_currentLine < ScenarioData.scenarioData.length - 1) {
          nextLine = _currentLine + 1;
        } else {
          nextLine = 0;
        }
      } else {
        for (final choice in _currentChoices) {
          if (choice['text'] == selectedChoice) {
            nextLine = choice['nextDialogueIndex'] as int;
            if (choice.containsKey('isCorrect')) {
              isCorrectChoice = choice['isCorrect'] == true;
            } else {
              isCorrectChoice = true; // Assume correct if 'isCorrect' is not specified
            }
            // This fucking handle life loss for incorrect choices
            if (!isCorrectChoice && choice.containsKey('loseLifeOnIncorrect') && choice['loseLifeOnIncorrect'] == true) {
              if (!isCorrectChoice && choice.containsKey('loseLifeOnIncorrect') && choice['loseLifeOnIncorrect'] == true) {
                if (_lives > 0) { // Only lose a life if not already game over
                  _heartImages[_lives - 1] = 'assets/icons/shattered-heart.png';
                  _lives--;
                }
                if (_lives <= 0) {
                  _isGameOver = true;
                  return; // Exit if game over
                }
              }
              incorrectChoiceMade = true;
            }

            if (choice.containsKey('nextDialogueIndex')) {
              nextLine = choice['nextDialogueIndex'] as int;
            }

            // This fucking handle life loss for incorrect choices
            break;
          }
        }
      }

      if (!isCorrectChoice && ScenarioData.scenarioData[_currentLine].containsKey('incorrectChoiceGoTo')) {
        nextLine = ScenarioData.scenarioData[_currentLine]['incorrectChoiceGoTo'] as int;
      }

      if (ScenarioData.scenarioData[nextLine].containsKey('isQuestion') && ScenarioData.scenarioData[nextLine]['isQuestion'] == true){
        _lastQuestionIndex = nextLine;
      }

      // Updates the current line and load the data for the next dialogue
      _currentLine = nextLine;
      _backgroundImage =
          ScenarioData.scenarioData[_currentLine]['backgroundImage'] ??
              _backgroundImage;
      _currentCharacterName =
          ScenarioData.scenarioData[_currentLine]['characterName'] ??
              _currentCharacterName;
      _currentCharacterSprite =
      ScenarioData.scenarioData[_currentLine]['characterSprite'] == 'null'
          ? null
          : ScenarioData.scenarioData[_currentLine]['characterSprite'];
      _currentChoices =
          ScenarioData.scenarioData[_currentLine]['choices'] ?? [];
      _showLives =
          ScenarioData.scenarioData[_currentLine]['showLives'] ?? true;

      if(ScenarioData.scenarioData[_currentLine].containsKey('navigateRoute')) {
        final routeName = ScenarioData.scenarioData[_currentLine]['navigateRoute'];
          if (routeName != null) {
            _navigateToRoute(routeName);
            return;
          }
      }

      // Reset choice colors after moving to the next dialogue
      _resetChoiceColors = true;
    });
  }

  // fuck you intro scene fuck u fuck u
  void _navigateToRoute(String routeName) {
    switch (routeName) {
      case 'Chapter1Screen':
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, aniamtion, secondaryAnimation) => Chapter1Screen(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),


        );
        break;
    // Add more cases for other routes as needed
    }
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

          if (_showLives && _currentChoices.isNotEmpty)
            Positioned(
              key: ValueKey(_lives),
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.03,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(_lives, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Image.asset(
                      _heartImages[index],
                      width: 40,
                      height: 40,
                    ),
                  );
                }),
              ),
            ),

          if (_currentCharacterSprite != null &&
              _currentCharacterSprite != 'null')
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.12,
              left: MediaQuery.of(context).size.width * 0.03,
              child: Image.asset(
                _currentCharacterSprite!,
                width: 500,
                height: 400,
                fit: BoxFit.contain,
              ),
            )
          else
            const SizedBox.shrink(),

          if (_currentChoices.isNotEmpty &&
              !_isGameOver) // Show choices only if it's not game over hak
            Align(
              alignment: Alignment(0, -0.4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: _buildChoiceOptions(context),
              ),
            ),

          if (!_isGameOver)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DialogueBoxWidget(
                      characterName: _currentCharacterName,
                      dialogueText:
                      ScenarioData.scenarioData[_currentLine]['dialogue'],
                      nextDialogue: _nextDialogue,
                      hasChoices: _currentChoices.isNotEmpty,
                    ),
                  ],
                ),
              ),
            ),

          if (_isGameOver)
            GameOverOverlay(onRestart: _resetGame), // Show game over overlay
        ],
      ),
    );
  }
  @override
  void didUpdateWidget(ScenarioScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_resetChoiceColors) {
      setState(() {
        _resetChoiceColors = false;
      });
    }
  }

  Widget _buildChoiceOptions(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      _currentChoices.map((choiceData) {
        bool? isCorrect = choiceData['isCorrect']; // puta dapat null toh tangina naman napakapota

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ChoiceButton(
            choiceText: choiceData['text']!,
            onPressed: () => _nextDialogue(choiceData['text']),
            isCorrect: isCorrect,
            resetColor: _resetChoiceColors,
          ),
        );
      }).toList(),
    );
  }
}