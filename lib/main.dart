import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import '../widgets/instructions_overlay.dart';
import 'settings/settings.dart';
import 'settings/settings_chapters.dart';
import 'package:audioplayers/audioplayers.dart';
import '../widgets/bgm_player.dart';

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

final bgmPlayer = BGMPlayer();
final AudioPlayer _sfxPlayer = AudioPlayer();

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 1.0;
  bool _isFading = false;

  void _handlePlay() async {
    _sfxPlayer.play(AssetSource('audio/sfx/sound/GTAclick.mp3'));
    if (_isFading) return;
    setState(() {
      _opacity = 0.0;
      _isFading = true;
    });

    // Fade out music
    await bgmPlayer.stopBackgroundMusic();

    await Future.delayed(const Duration(milliseconds: 800));

    await Navigator.of(context).pushReplacement(
      PageTransition(
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 800),
        child: const InstructionScreen(),
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
      builder: (context) => SettingsScreen(sfxPlayer: _sfxPlayer),
    );
  }

  @override
  void initState() {
    super.initState();
    bgmPlayer.startBackgroundMusic(); // Start the BGM on screen load
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg/cutscene2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.18,
              top: MediaQuery.of(context).size.width * 0.2,
              child: Text(
                'SKIBIDI\nINFECTION',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Obafen',
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  shadows: [
                    Shadow(
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      color: Colors.black54,
                    ),
                  ],
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
                      fontFamily: 'Obafen',
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
                  onPressed: () {
                    _sfxPlayer.play(AssetSource('audio/sfx/emotion/GTAclick.mp3'));
                    _openChapters(context);
                  },
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
                      fontFamily: 'Obafen',
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
                  onPressed: () {
                    _sfxPlayer.play(AssetSource('audio/sfx/emotion/GTAclick.mp3'));
                    _openSettings(context);
                  },
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
                      fontFamily: 'Obafen',
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