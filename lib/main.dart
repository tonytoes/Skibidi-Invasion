import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import '../scenes/scenario.dart';
import 'settings/settings.dart';
import 'settings/settings_chapters.dart';
import 'package:just_audio/just_audio.dart';
import '../widgets/bgm_player.dart';
import '../widgets/player_progress.dart';
import '../widgets/chapterone_overlay.dart'; // Import the ChapterIntroOverlay


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

// Initialize your global BGM player instance
final bgmPlayer = BGMPlayer();

// Initialize your global SFX player instance using just_audio
final AudioPlayer _sfxPlayer = AudioPlayer();


class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 1.0; // State for HomeScreen fade effect
  bool _isFading = false; // Flag to prevent multiple taps during fade
  int _lastPlayedIndex = 0; // Last played chapter index


  @override
  void initState() {
    super.initState();
    loadLastPlayedIndex();
    bgmPlayer.startBackgroundMusic();
  }

  // Load the last played chapter index from SharedPreferences
  void loadLastPlayedIndex() async {
    // Use loadProgress from player_progress.dart
    int? index = await loadProgress();
    setState(() {
      _lastPlayedIndex = index ?? 0; // Default to 0 if no index saved
    });
  }


  // Handles the transition when tapping Play/Continue
  void _handlePlayOrContinue() async {
    // try {
    //    await _sfxPlayer.setAudioSource(AudioSource.asset('audio/sfx/sound/GTAclick.mp3'));
    //    _sfxPlayer.play();
    // } catch (e) {
    //    print('Error playing click SFX: $e');
    // }

    if (_isFading) return;

    setState(() {
      _opacity = 0.0;
      _isFading = true;
    });

    await bgmPlayer.stopBackgroundMusic();

    // Wait for fade-out animation to complete
    await Future.delayed(const Duration(milliseconds: 800));


    final int targetScenarioIndex = _lastPlayedIndex > 0 ? _lastPlayedIndex : 0;

    const int chapter1ActualStartIndex = 13;

    if (targetScenarioIndex == chapter1ActualStartIndex) {
      await Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => ChapterIntroOverlay(
            chapterIndex: chapter1ActualStartIndex, // Pass the index for ScenarioScreen
            chapterTitle: 'Chapter 1', // Title for the overlay
            sfxPlayer: _sfxPlayer,
            bgmPlayer: bgmPlayer.player,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    } else {
      await Navigator.of(context).pushReplacement(
        PageTransition(
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 800),
          child: ScenarioScreen(
            index: targetScenarioIndex,
            sfxPlayer: _sfxPlayer,
            bgmPlayer: bgmPlayer.player,
          ),
        ),
      );
    }

    setState(() {
      _opacity = 1.0;
      _isFading = false;
    });
    // bgmPlayer.startBackgroundMusic(); // Re-evaluate when to restart BGM
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
        onChapterSelect: _handleChapterSelect,
        // sfxPlayer: _sfxPlayer,
      ),
    );
  }


  void _handleChapterSelect(int chapterIndex) {
    print('main.dart: _handleChapterSelect called with index: $chapterIndex'); // Add this print

    Navigator.pop(context);

    const int chapter1ActualStartIndex = 13;


    if (chapterIndex == chapter1ActualStartIndex) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => ChapterIntroOverlay(
            chapterIndex: chapter1ActualStartIndex,
            chapterTitle: 'Chapter 1',
            sfxPlayer: _sfxPlayer,
            bgmPlayer: bgmPlayer.player,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
          child: ScenarioScreen(
            index: chapterIndex,
            sfxPlayer: _sfxPlayer,
            bgmPlayer: bgmPlayer.player,
          ),
        ),
      );
    }
  }


  void _openSettings(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => SettingsScreen(sfxPlayer: _sfxPlayer),
    );
  }

  // Dispose of global resources when HomeScreen is disposed
  @override
  void dispose() {
    print('HomeScreen dispose: Disposing global audio players.');
    _sfxPlayer.dispose();
    bgmPlayer.dispose();

    print('HomeScreen dispose: Disposed global audio players.');

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // Determine button text based on whether progress exists
    final buttonText = _lastPlayedIndex > 0 ? 'Continue' : 'Play';

    return Scaffold(
      backgroundColor: Colors.black, // Keep black background for the home screen fade
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(milliseconds: _isFading ? 800 : 0), // Duration depends on if fading
        curve: Curves.easeInOut, // Smooth the fade animation
        child: Stack( // Use Stack to layer widgets
          children: [
            // Background Image
            Positioned.fill( // Make the image cover the whole screen
              child: Image.asset(
                'assets/images/bg/cutscene2.png', // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),

            // Game Title
            Positioned(
              right: MediaQuery.of(context).size.width * 0.18, // Adjust position
              top: MediaQuery.of(context).size.width * 0.2, // Adjust position
              child: Text(
                'SKIBIDI\nINFECTION', // Game title text
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Obafen', // Your custom font
                  fontSize: 60, // Adjust size
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  shadows: [ // Optional: Add text shadow for better visibility
                    Shadow(
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ),

            // Play/Continue Button
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.3, // Adjust position
              left: MediaQuery.of(context).size.width * 0.1, // Adjust position
              right: MediaQuery.of(context).size.width * 0.1, // Adjust position
              child: Center( // Center the button horizontally
                child: ElevatedButton(
                  onPressed: _handlePlayOrContinue,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2)), // Semi-transparent black background
                    overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) { // Visual feedback on tap
                          if (states.contains(WidgetState.pressed)) {
                            return const Color.fromARGB(255, 90, 136, 138) // Color on press
                                .withOpacity(0.2);
                          }
                          return null; // No overlay color in other states
                        }),
                    shape: WidgetStateProperty.all(const StadiumBorder()), // Stadium (rounded) shape
                    minimumSize: WidgetStateProperty.all(const Size(200, 50)), // Set minimum size
                  ),
                  child: Text( // Use the dynamic button text ("Play" or "Continue")
                    buttonText,
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

            // Story Button (Opens Chapters)
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2, // Adjust position
              left: 0,
              right: 0,
              child: Center( // Center the button horizontally
                child: ElevatedButton(
                  onPressed: () {
                    _openChapters(context); // Call method to open chapter modal
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
                    'Story',
                    style: TextStyle(
                      fontFamily: 'Obafen', // Your custom font
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),


            // Settings Button
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1, // Adjust position
              left: 0,
              right: 0,
              child: Center( // Center the button horizontally
                child: ElevatedButton(
                  onPressed: () {
                    _openSettings(context); // Call method to open settings modal
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
                      fontFamily: 'Obafen', // Your custom font
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