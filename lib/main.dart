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
                  image: AssetImage('assets/images/bg/titlescreen_bg.png'),
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
              left: 0,
              right: 0,
              child: Center(
                  child: ElevatedButton(
                    onPressed: _handlePlay,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF0486f4)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.indigo;
                          }
                          return null;
                        },
                      ),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
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
                  onPressed: () => _openSettings(context),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF0486f4)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.red;
                          }
                          return null;
                        },
                      ),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                      minimumSize: MaterialStateProperty.all(const Size(200,50))
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
                    backgroundColor: MaterialStateProperty.all(Color(0xFF0486f4)),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.red;
                        }
                        return null;
                      },
                    ),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    ),
                      minimumSize: MaterialStateProperty.all(const Size(200,50))
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
