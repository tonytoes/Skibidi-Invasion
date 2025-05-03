import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:ui';
import '../settings/settings_scenario.dart';
import '../widgets/dialogue_overlay.dart';
import '../data/scenario_data.dart';
import '../widgets/choice_overlay.dart';
import '../widgets/gameover_overlay.dart';



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
  int _currentLine = 90;
  int _lives = 3;
  int _lastQuestionIndex = 0;
  bool pressed = true;
  bool _showLives = true;
  bool _resetColors = false;
  late String _backgroundImage;
  late String _characterName;
  late AudioPlayer _audio;
  late AudioPlayer _bgm;
  String? _currentBgm;

  List<Map<String, dynamic>> _characters = [];


  List<String> _heartImages = [
    'assets/icons/hearts.png',
    'assets/icons/hearts.png',
    'assets/icons/hearts.png'
  ];

  List<Map<String, dynamic>> _currentChoices = [];
  bool _isGameOver = false;


  // Add all character sprite image paths to this list
  final List<String> characterSpritesToPrecache = [
    'assets/images/characters/pose1/111.png',
    'assets/images/characters/pose1/112.png',
    'assets/images/characters/pose1/113.png',
    'assets/images/characters/pose1/114.png',
    'assets/images/characters/pose1/121.png',
    'assets/images/characters/pose1/122.png',
    'assets/images/characters/pose1/123.png',
    'assets/images/characters/pose1/124.png',
    'assets/images/characters/pose1/131.png',
    'assets/images/characters/pose1/132.png',
    'assets/images/characters/pose1/133.png',
    'assets/images/characters/pose1/134.png',
    'assets/images/characters/pose1/141.png',
    'assets/images/characters/pose1/142.png',
    'assets/images/characters/pose1/143.png',
    'assets/images/characters/pose1/144.png',
    'assets/images/characters/pose1/151.png',
    'assets/images/characters/pose1/152.png',
    'assets/images/characters/pose1/153.png',
    'assets/images/characters/pose1/154.png',
    'assets/images/characters/pose1/161.png',
    'assets/images/characters/pose1/162.png',
    'assets/images/characters/pose1/163.png',
    'assets/images/characters/pose1/164.png',

    'assets/images/characters/pose2/211.png',
    'assets/images/characters/pose2/212.png',
    'assets/images/characters/pose2/213.png',
    'assets/images/characters/pose2/214.png',
    'assets/images/characters/pose2/221.png',
    'assets/images/characters/pose2/222.png',
    'assets/images/characters/pose2/223.png',
    'assets/images/characters/pose2/224.png',
    'assets/images/characters/pose2/231.png',
    'assets/images/characters/pose2/232.png',
    'assets/images/characters/pose2/233.png',
    'assets/images/characters/pose2/234.png',
    'assets/images/characters/pose2/241.png',
    'assets/images/characters/pose2/242.png',
    'assets/images/characters/pose2/243.png',
    'assets/images/characters/pose2/244.png',
    'assets/images/characters/pose2/251.png',
    'assets/images/characters/pose2/252.png',
    'assets/images/characters/pose2/253.png',
    'assets/images/characters/pose2/254.png',
    'assets/images/characters/pose2/261.png',
    'assets/images/characters/pose2/262.png',
    'assets/images/characters/pose2/263.png',
    'assets/images/characters/pose2/264.png',
  ];

  @override

  @override
  void initState() {
    super.initState();
    _audio = AudioPlayer();
    _bgm = AudioPlayer();
    _loadInitialData();

    // Precache images
    Future.delayed(Duration.zero, () {
      for (String spritePath in characterSpritesToPrecache) {
        precacheImage(AssetImage(spritePath), context);
      }
    });
  }

  @override
  void dispose () {
    _bgm.stop();
    _bgm.dispose();
    _audio.dispose();
    super.dispose();
  }

  void _loadInitialData() {
    _backgroundImage =
    ScenarioData.scenarioData[_currentLine]['backgroundImage'];
    _characters =
        (ScenarioData.scenarioData[_currentLine]['characters'] as List<
            Map<String, dynamic>>?) ?? [];
    _characterName = ScenarioData.scenarioData[_currentLine]['characterName'] ?? '';
    _currentChoices = ScenarioData.scenarioData[_currentLine]['choices'] ?? [];
    _showLives = ScenarioData.scenarioData[_currentLine]['showLives'] ?? true;
    _playSFX(ScenarioData.scenarioData[_currentLine]['sfx']);
    String? bgmPath = ScenarioData.scenarioData[_currentLine]['bgm'];
    _updateBgm(bgmPath);
  }

  void _playSFX(String? sfxPath) {
    if (sfxPath != null && sfxPath.isNotEmpty) {
      _audio.play(AssetSource(sfxPath));
    }
  }

  void _updateBgm(String? bgmPath) async {
    if (bgmPath != _currentBgm) {
      if (_currentBgm != null) {
        await _bgm.stop();
      }
      if(bgmPath != null && bgmPath.isNotEmpty) {
        await _bgm.setSource(AssetSource(bgmPath));
        _bgm.setReleaseMode(ReleaseMode.loop);
        await _bgm.resume();

        _currentBgm = bgmPath;
      }
      else {
        _currentBgm = null;
      }
    }
  }

  void _nextDialogue(String? selectedChoice) {
    setState(() {
      if (_isGameOver) {
        return;
      }

      bool isChoiceCorrect = false;
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
              isChoiceCorrect = choice['isCorrect'] == true;
            } else {
              isChoiceCorrect = true;
            }
            if (!isChoiceCorrect && choice.containsKey('loseLifeOnIncorrect') &&
                choice['loseLifeOnIncorrect'] ==
                    true) { // Handles life loss for incorrect choices
              if (_lives > 0) {
                _heartImages[_lives - 1] = 'assets/icons/brokenheart.png';
                _lives--;
              }
              if (_lives <= 0) {
                _isGameOver = true;
                return;
              }
              incorrectChoiceMade = true;
            }
            if (choice.containsKey('nextDialogueIndex')) {
              nextLine = choice['nextDialogueIndex'] as int;
            }
            break;
          }
        }
      }

      if (!isChoiceCorrect &&
          ScenarioData.scenarioData[_currentLine].containsKey(
              'incorrectChoiceGoTo')) {
        nextLine =
        ScenarioData.scenarioData[_currentLine]['incorrectChoiceGoTo'] as int;
      }
      if (ScenarioData.scenarioData[nextLine].containsKey('isQuestion') &&
          ScenarioData.scenarioData[nextLine]['isQuestion'] == true) {
        _lastQuestionIndex = nextLine;
      }
      _currentLine = nextLine;
      _backgroundImage =
          ScenarioData.scenarioData[_currentLine]['backgroundImage'] ??
              _backgroundImage;
      _characters =
          (ScenarioData.scenarioData[_currentLine]['characters'] as List<
              Map<String, dynamic>>?) ?? [];
      _characterName =
          ScenarioData.scenarioData[_currentLine]['characterName'] ??
              _characterName;
      _currentChoices =
          ScenarioData.scenarioData[_currentLine]['choices'] ?? [];
      _showLives =
          ScenarioData.scenarioData[_currentLine]['showLives'] ?? true;

      _playSFX(ScenarioData.scenarioData[_currentLine]['sfx']);
      String? bgmPath = ScenarioData.scenarioData[_currentLine]['bgm'];
      _updateBgm(bgmPath);
      _resetColors = true;
    });
  }

  void _resetGame() {
    setState(() {
      _currentLine = _lastQuestionIndex > 0 ? _lastQuestionIndex : 0;
      _lives = 3;
      _isGameOver = false;
      _backgroundImage =
      ScenarioData.scenarioData[_currentLine]['backgroundImage'];
      _characters =
          (ScenarioData.scenarioData[_currentLine]['characters'] as List<
              Map<String, dynamic>>?) ?? [];
      _characterName = ScenarioData.scenarioData[_currentLine]['characterName'];
      _currentChoices =
          ScenarioData.scenarioData[_currentLine]['choices'] ?? [];
      _showLives = ScenarioData.scenarioData[_currentLine]['showLives'] ?? true;
      _heartImages = [
        'assets/icons/hearts.png',
        'assets/icons/hearts.png',
        'assets/icons/hearts.png'
      ];
      _playSFX(ScenarioData.scenarioData[_currentLine]['sfx']);
      String? bgmPath = ScenarioData.scenarioData[_currentLine]['bgm'];
      _updateBgm(bgmPath);
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


          if (_showLives && _currentChoices.isNotEmpty)
            Positioned(
              key: ValueKey(_lives), // Keep the ValueKey
              top: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.03,
              child: Row(
                key: ValueKey(_lives),
                mainAxisSize: MainAxisSize.min,
                children: List.generate(3, (index) {
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


          ..._characters.map((character) {
            String spritePath = character['sprite'];
            String position = character['position'];

            double? left, right;
            if (position == 'left') {
              left = MediaQuery.of(context).size.width * 0.3; // adjust spacing from left
              right = null; // Don't set right if positioning from the left
            }
            else if (position == 'right') {
              right = MediaQuery.of(context).size.width * 0.1; // adjust spacing from right
              left = null; // Don't set left if positioning from the right
            }
            else if (position == 'center') {
              left = (MediaQuery.of(context).size.width - 500) / 2;
              right = null;
            }
            else {
              left = null;
              right = null;
            }
            return Positioned(
              bottom: MediaQuery.of(context).size.height * 0.12, // adjust
              left: left,
              right: right,
              child: Image.asset(
                spritePath,
                width: 500, // Adjust size as needed
                height: 400, // Adjust size as needed
                fit: BoxFit.contain,
              ),
            );
          }).toList(),


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
                      characterName: _characterName,
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
    if (_resetColors) {
      setState(() {
        _resetColors = false;
    });
  }
}

  Widget _buildChoiceOptions(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      _currentChoices.map((choiceData) {
        bool? isCorrect = choiceData['isCorrect'];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ChoiceButton(
            choiceText: choiceData['text']!,
            onPressed: () => _nextDialogue(choiceData['text']),
            isCorrect: isCorrect,
            resetColor: _resetColors,
          ),
        );
      }).toList(),
    );
  }
}

