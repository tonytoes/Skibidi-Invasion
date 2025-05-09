import 'dart:ui';
import 'package:flutter/material.dart';
import '../scenes/scenario.dart';
import '../widgets/player_progress.dart';


class ChapterScreen extends StatefulWidget {
  final Function(int) onChapterSelect;

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
    print('ChapterScreen: Loaded maxUnlockedIndex is: $_maxUnlockedIndex'); // Add this line
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chapters = [
      {'title': 'Chapter 1', 'index': 13},
      {'title': 'Chapter 2', 'index': 67},
      {'title': 'Chapter 3', 'index': 130},
      {'title': 'Chapter 4', 'index': 200},
      {'title': 'Final Chapter', 'index': 250},
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: GestureDetector( // <-- Add GestureDetector here
          onTap: () {
          print('ChapterScreen: GestureDetector on main Container tapped'); // Add this print
          },
          child: Container(
            //height: 650,
            color: Colors.black.withOpacity(0.7),
            child: Column(
              children: [
                // Header and Divider...
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/scroll.png'),
                      const SizedBox(width: 10),
                      const Text(
                        'Story Checkpoints',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
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

                // Chapters
                ...chapters.map((chapter) {
                  bool isUnlocked = chapter['index'] <= _maxUnlockedIndex;
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: isUnlocked
                          ? () {
                        print('ChapterScreen: Tapped on chapter with index: ${chapter['index']}'); // This print is not appearing
                        widget.onChapterSelect(chapter['index']);
                      }
                          : null,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/circle-book.png',
                            width: 27,
                            height: 27,
                            color: isUnlocked ? Colors.white : Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            chapter['title'],
                            style: TextStyle(
                              color: isUnlocked ? Colors.white : Colors.grey,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
                const Spacer(),
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
