import 'dart:ui';
import 'package:flutter/material.dart';
import '../scenes/scenario.dart';
import '../widgets/player_progress.dart';


class ChapterScreen extends StatefulWidget {
  final Function(int, String) onChapterSelect;

  const ChapterScreen({
    super.key,
    required this.onChapterSelect,
  });

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
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
    print('ChapterScreen: Loaded maxUnlockedIndex is: $_maxUnlockedIndex');
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chapters = [
      {'title': 'Prologue', 'index': 0},
      {'title': 'Chapter 1: Intro', 'index': 13},
      {'title': 'Chapter 2: Library', 'index': 67},//67
      {'title': 'Chapter 3: Laboratory', 'index': 127},
      {'title': 'Chapter 4: Computer', 'index': 188},
      {'title': 'Chapter 5: Ending', 'index': 279},
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: GestureDetector(
          onTap: () {
          },
          child: Container(

            color: Colors.black.withOpacity(0.7),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      const Text(
                        'Select Chapter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
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


                ...chapters.map((chapter) {
                  bool isUnlocked = chapter['index'] <= _maxUnlockedIndex;
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: isUnlocked
                          ? () {
                        widget.onChapterSelect(chapter['index'], chapter['title']);
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
                                chapter['title'],
                                style: TextStyle(
                                  color: isUnlocked ? Colors.white : Colors.grey,
                                  fontSize: chapter['title'].length > 20 ? 24 : 25,
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
