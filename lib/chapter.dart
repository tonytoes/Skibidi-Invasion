import 'dart:ui';
import 'package:flutter/material.dart';

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body:
      BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child:
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 200,
              color: Colors.orange,
              child: Center(child: Text("Second Screen", )),
            ),
          )
      ),
    );
  }
}