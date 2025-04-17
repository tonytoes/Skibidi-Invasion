import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'scenario.dart';
import 'settings.dart';
import 'chapter.dart';

  void main() {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

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

      await Future.delayed(const Duration(milliseconds: 800));

      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ScenarioScreen(),
        ),
      );

      setState(() {
        _opacity = 1.0;
        _isFading = false;
      });

    }

    void _Chapters(BuildContext context) {
      showCupertinoModalPopup(
        context: context,
        builder: (context) => const ChapterScreen(),
      );
    }

    void _Settings(BuildContext context) {
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
                  image: AssetImage('assets/images/bg/titlescreen_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const Center(
              child: Text(
                'TOILET\nINVASION',
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
              bottom: MediaQuery.of(context).size.height * 0.2,
              left: 0,
              right: 0,
              child: Center(
                child: TextButton(
                  onPressed: _handlePlay,
                  child: const Text(
                    'Play',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.13,
              right: MediaQuery.of(context).size.width * 0.02,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () => _Chapters(context),
                    child: Image.asset(
                      'assets/icons/book.png',
                    ),
                  ),
                  Text(
                    'Story',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.01,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () => _Settings(context),
                    child: Image.asset(
                        'assets/icons/settings.png'
                    ),
                  ),
                  Text(
                      'Settings',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                   ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
