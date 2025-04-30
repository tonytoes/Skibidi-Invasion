import 'dart:ui';
import 'package:flutter/material.dart';

class ChapterScreen extends StatelessWidget {
  const ChapterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 750,
            color: Colors.black.withValues(alpha: 0.7),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/icons/scroll.png'),
                        SizedBox(width: 10),
                        Text(
                          'Story Checkpoints',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ],
                    ),
                  ),

                  Divider(
                    color: Colors.white,
                    height: 36,
                    indent: 25,
                    endIndent: 25,
                    thickness: 1.5,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/circle-book.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Chapter 1',
                            style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/circle-book.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Chapter 2',
                            style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/circle-book.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Chapter 3',
                            style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/circle-book.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Chapter 4',
                            style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/circle-book.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Final Chapter',
                            style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back',
                        style: const TextStyle(color: Colors.white, fontSize: 24),
                      ),
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
