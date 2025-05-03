import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart'; // Import the page_transition package
import '../widgets/instructions_overlay.dart';
import 'settings/settings.dart';
import 'settings/settings_chapters.dart';
import 'package:audioplayers/audioplayers.dart';
// this the main dart this part imports leading to diff darts

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
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
      _opacity = 0.0;
      _isFading = true;
    });

    await Future.delayed(const Duration(milliseconds: 800)); // Use 800ms to match the AnimatedOpacity

    await Navigator.of(
      context,
    ).pushReplacement( // Use pushReplacement for a smoother transition
      PageTransition(
        // Use PageTransition
        type: PageTransitionType.fade, // Choose your desired transition type
        duration: const Duration(milliseconds: 800), // Match AnimatedOpacity duration
        child: const InstructionScreen(), // The screen to navigate to
      ),
    );

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
        duration: const Duration(milliseconds: 800), // 800ms
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
                'SKIBIDI\nINVASION',
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
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>((
                        Set<MaterialState> states,
                        ) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color.fromARGB(255, 125, 192, 108)
                            .withOpacity(0.2);
                        ;
                      }
                      return null;
                    }),
                    shape: MaterialStateProperty.all(const StadiumBorder()),
                    minimumSize: MaterialStateProperty.all(const Size(200, 50)),
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
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>((
                        Set<MaterialState> states,
                        ) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color.fromARGB(255, 138, 137, 90)
                            .withOpacity(0.2);
                      }
                      return null;
                    }),
                    shape: MaterialStateProperty.all(const StadiumBorder()),
                    minimumSize: MaterialStateProperty.all(const Size(200, 50)),
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
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>((
                        Set<MaterialState> states,
                        ) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color.fromARGB(255, 90, 136, 138)
                            .withOpacity(0.2);
                      }
                      return null;
                    }),
                    shape: MaterialStateProperty.all(const StadiumBorder()),
                    minimumSize: MaterialStateProperty.all(const Size(200, 50)),
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

