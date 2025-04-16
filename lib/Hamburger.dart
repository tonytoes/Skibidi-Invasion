import 'dart:ui';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 800,
            color: Colors.transparent,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'Menu',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24
                        )
                    ),

                    Divider (
                      color: Colors.white,
                      height: 36,
                      thickness: 1.5
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: BorderSide.none,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Continue',
                            style: const TextStyle (
                          color: Colors.white,
                        fontSize: 24
                       ),
                      ),
                    ),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide.none,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                            'Chapter',
                            style: const TextStyle (
                                color: Colors.white,
                                fontSize: 24
                            ),
                        ),
                    ),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide.none,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                            'Return to title screen',
                            style: const TextStyle (
                                color: Colors.white,
                                fontSize: 24
                            )
                        )
                    )

                  ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
