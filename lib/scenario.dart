import 'package:flutter/material.dart';

class ScenarioScreen extends StatelessWidget {
  const ScenarioScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        actions: <Widget>[
        IconButton(
          icon: const Icon(
              Icons.menu,
              size: 33,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ],
      ),


      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg/ruins_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
