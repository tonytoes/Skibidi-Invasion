import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'scenes/scenario.dart';
import 'settings/settings.dart';
import 'settings/settings_chapters.dart';
import 'package:audioplayers/audioplayers.dart';
// this the main dart this part imports leading to diff darts

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // this ensures that plugins would work
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky); // this removes the status bar and the bottom navigator
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); // locks the screen to portrait

  runApp(const MyApp()); // very important without this it wouldn't render the whole or it wouldn't run
}

class MyApp extends StatelessWidget { // this is stateless because this main dart doesn't have any state or basically its the root of all darts
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // this removes the debug
      home: const HomeScreen(), // this the homescreen or what you would see at the start
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 1.0;
  bool _isFading = false;

  void _handlePlay() async {
    if (_isFading) return;
    setState(() {
      _opacity = 0.0; // this sets the fade out and fade in trnasition
      _isFading = true;
    });

    await Future.delayed(const Duration(milliseconds: 1000));

    await Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const ScenarioScreen()));

    setState(() {
      _opacity = 1.0;
      _isFading = false;
    });
  }

  void _openChapters(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => const ChapterScreen(),
    );
  }

  void _openSettings(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => const SettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 1200),
        curve: Curves.easeInOut,
        child: Stack(
          children: [
            Container(
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage('assets/images/bg/Downtown-Night.png'),
                    fit: BoxFit.cover,
                  ),
                ),
            ),
            const Center(
              child: Text(
                'SKIBIDI\nINVASION', // this is just a draft can be an image asset for the logo
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'JosefinSans',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
              child: Center(
                child: ElevatedButton(
                  onPressed: _handlePlay,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)
                    ),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.pressed)) {
                        return Color.fromARGB(255, 125, 192, 108).withOpacity(0.2);;
                      }
                      return null;
                    }),
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    minimumSize: WidgetStateProperty.all(const Size(200, 50)),
                  ),
                  child: const Text(
                    'Play',
                    style: TextStyle(
                      fontFamily: 'TacticRound',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => _openChapters(context),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)
                    ),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.pressed)) {
                        return const Color.fromARGB(255, 138, 137, 90).withOpacity(0.2);
                      }
                      return null;
                    }),
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    minimumSize: WidgetStateProperty.all(const Size(200, 50)),
                  ),
                  child: const Text(
                    'Story',
                    style: TextStyle(
                      fontFamily: 'TacticRound',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => _openSettings(context),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const  Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)
                    ),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>((
                      Set<WidgetState> states,
                    ) {
                      if (states.contains(WidgetState.pressed)) {
                        return const Color.fromARGB(255, 90, 136, 138).withOpacity(0.2);
                      }
                      return null;
                    }),
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    minimumSize: WidgetStateProperty.all(const Size(200, 50)),
                  ),
                  child: const Text(
                    'Settings',
                    style: TextStyle(
                      fontFamily: 'TacticRound',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
