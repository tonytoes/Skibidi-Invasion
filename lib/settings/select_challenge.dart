import 'dart:ui';
import 'package:flutter/material.dart';
import '../widgets/player_progress.dart';

class ChalSelectScreen extends StatefulWidget {
  final Function(int, String) onChallengeSelect;

  const ChalSelectScreen({super.key, required this.onChallengeSelect});

  @override
  State<ChalSelectScreen> createState() => _ChalSelectScreenState();
}

class _ChalSelectScreenState extends State<ChalSelectScreen> {
  int _maxUnlockedIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final index = await loadProgress();
    setState(() {
      _maxUnlockedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> challenge = [
      {'title': 'Trials', 'index': 0},
      {'title': 'Trials 1', 'index': 2},
      {'title': 'Trials 2', 'index': 3},
      {'title': 'Trials 3', 'index': 4},
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.black.withValues(alpha: 0.7),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        const Text(
                          'Challenges',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 36,
                    indent: 25,
                    endIndent: 25,
                    thickness: 1.5,
                  ),

                  ...challenge.map((challenge) {
                    bool isUnlocked = challenge['index'] <= _maxUnlockedIndex;
                    return Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: GestureDetector(
                        onTap:
                            isUnlocked
                                ? () {
                                  widget.onChallengeSelect(
                                    challenge['index'],
                                    challenge['title'],
                                  );
                                }
                                : null,
                        child: Row(
                          children: [
                            Image.asset(
                              isUnlocked
                                  ? 'assets/icons/circle-book.png'
                                  : 'assets/icons/lock.png',
                              width: 27,
                              height: 27,
                              color: isUnlocked ? Colors.white : Colors.grey,
                            ),
                            const SizedBox(width: 8),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return Text(
                                  challenge['title'],
                                  style: TextStyle(
                                    color:
                                        isUnlocked ? Colors.white : Colors.grey,
                                    fontSize:
                                        challenge['title'].length > 20
                                            ? 24
                                            : 25,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                  SizedBox(height: 150),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Back',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
