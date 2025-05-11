import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:page_transition/page_transition.dart';
import '../scenes/scenario.dart';
import 'settings/settings.dart';
import 'settings/settings_chapters.dart';
import 'package:just_audio/just_audio.dart';
import '../widgets/bgm_player.dart';
import '../widgets/player_progress.dart';
import '../widgets/chapter_title.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
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


class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  double _opacity = 1.0;
  bool _isFading = false;
  int _lastPlayedIndex = 0;


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _sfxPlayer.setVolume(0.5);
    loadLastPlayedIndex();
    bgmPlayer.startBackgroundMusic();
  }


  void loadLastPlayedIndex() async {
    int? index = await loadProgress();
    setState(() {
      _lastPlayedIndex = index ?? 0;
    });
  }


  void _openChapters(BuildContext context) {
    // try {
    //    await _sfxPlayer.setAudioSource(AudioSource.asset('audio/sfx/sound/GTAclick.mp3'));
    //    _sfxPlayer.play();
    // } catch (e) {
    //    print('Error playing click SFX: $e');
    // }
    print('main.dart: Tapped Story button, opening ChapterScreen modal');
    showCupertinoModalPopup(
      context: context,
      builder: (context) => ChapterScreen(
        onChapterSelect: (index, title ) => _handleChapterSelect(index,title),
        // sfxPlayer: _sfxPlayer,
      ),
    );
  }


  void _handleChapterSelect(int chapterIndex, String chapterTitle) {
    print('main.dart: _handleChapterSelect called with index: $chapterIndex and title: $chapterTitle');

    Navigator.pop(context);
    bgmPlayer.player.pause();


    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (context, animation, secondaryAnimation) => ChapterIntroOverlay(
          chapterIndex: chapterIndex,
          chapterTitle: chapterTitle,
          sfxPlayer: _sfxPlayer,
          bgmPlayer: bgmPlayer.player,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  void _openSettings(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => SettingsScreen(sfxPlayer: _sfxPlayer),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(milliseconds: _isFading ? 800 : 0),
        curve: Curves.easeInOut,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg/cutscene2.png',
                fit: BoxFit.cover,
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
                  onPressed: () {
                    _openChapters(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2)),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return const Color.fromARGB(255, 90, 136, 138)
                                .withOpacity(0.2);
                          }
                          return null;
                        }),
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    minimumSize: WidgetStateProperty.all(const Size(200, 50)),
                  ),
                  child: Text(
                    'Play',
                    style: const TextStyle(
                      fontFamily: 'Obafen', // Your custom font
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
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return const Color.fromARGB(255, 90, 136, 138)
                                .withOpacity(0.2);
                          }
                          return null;
                        }),
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    minimumSize: WidgetStateProperty.all(const Size(200, 50)),
                  ),
                  child: const Text(
                    'Challenges',
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
                    _openSettings(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3)),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return const Color.fromARGB(255, 90, 136, 138)
                                .withOpacity(0.2);
                          }
                          return null;
                        }),
                    shape: WidgetStateProperty.all(const StadiumBorder()),
                    minimumSize: WidgetStateProperty.all(const Size(200, 50)),
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