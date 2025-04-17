import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'hamburger.dart';

void _openMenu(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (context) => const MenuScreen(),
  );
}

class ScenarioScreen extends StatelessWidget {
  const ScenarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[

          Padding(
            padding: EdgeInsets.only(
                top:5
            ),
            child: ElevatedButton(
              onPressed: () => _openMenu(context),
              child: Image.asset(
                  'assets/icons/speaker.png',
                  color: Colors.white,
                  width: 40,
                  height: 40
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
            top:5
            ),
          child: ElevatedButton(
            onPressed: () => _openMenu(context),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 40
                  ),
                style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                  }
                  return null;
                  },
                ),
              ),
            ),
          ),

        ],
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg/livingRoomDay-1600.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

