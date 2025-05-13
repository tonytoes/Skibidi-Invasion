import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:just_audio/just_audio.dart';
import '../settings/settings_scenario.dart';
import '../widgets/bgm_player.dart';
import 'package:shared_preferences/shared_preferences.dart';

void _openMenu(BuildContext context, AudioPlayer sfxPlayer) {
  Navigator.pushReplacement(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds: 500),
      child: MenuScreen(sfxPlayer: sfxPlayer),
    ),
  );
}

class SettingsMoreScreen extends StatefulWidget {
  final AudioPlayer sfxPlayer;

  const SettingsMoreScreen({Key? key, required this.sfxPlayer})
    : super(key: key);

  @override
  State<SettingsMoreScreen> createState() => _SettingsMoreScreenState();
}

class _SettingsMoreScreenState extends State<SettingsMoreScreen> {
  bool firstSwitchValue = true;
  double musicVolume = 0.0;
  double sfxVolume = 0.0;

  final BGMPlayer _bgmPlayer = BGMPlayer();
  late Future<SharedPreferences> _prefs;

  @override
  void initState() {
    super.initState();
    _prefs = SharedPreferences.getInstance();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await _prefs;
    setState(() {
      musicVolume = prefs.getDouble('musicVolume') ?? 0.5;
      sfxVolume = prefs.getDouble('sfxVolume') ?? 0.5;
    });
    _bgmPlayer.setVolume(musicVolume);
    widget.sfxPlayer.setVolume(sfxVolume);
  }

  Future<void> _saveSettings() async {
    final prefs = await _prefs;
    await prefs.setDouble('musicVolume', musicVolume);
    await prefs.setDouble('sfxVolume', sfxVolume);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: FutureBuilder<SharedPreferences>(
            future: _prefs,
            builder: (
              BuildContext context,
              AsyncSnapshot<SharedPreferences> snapshot,
            ) {
              if (snapshot.hasData) {
                final prefs = snapshot.data!;
                musicVolume = prefs.getDouble('musicVolume') ?? 0.5;
                sfxVolume = prefs.getDouble('sfxVolume') ?? 0.5;
                _bgmPlayer.setVolume(musicVolume);
                widget.sfxPlayer.setVolume(sfxVolume);

                return Container(
                  color: Colors.black.withValues(alpha: 0.7),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sounds',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          height: 36,
                          indent: 25,
                          endIndent: 25,
                          thickness: 1.5,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Background Music',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 3,
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 5,
                                    ),
                                  ),
                                  child: Slider(
                                    activeColor: Colors.red,
                                    inactiveColor: Colors.white,
                                    max: 1.0,
                                    min: 0.0,
                                    value: musicVolume,
                                    onChanged: (value) {
                                      setState(() {
                                        musicVolume = value;
                                      });
                                      _bgmPlayer.setVolume(value);
                                      _saveSettings();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '${(musicVolume * 100).round()}%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sound Effects',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 3,
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 5,
                                    ),
                                  ),
                                  child: Slider(
                                    activeColor: Colors.red,
                                    inactiveColor: Colors.white,
                                    max: 1.0,
                                    min: 0.0,
                                    value: sfxVolume,
                                    onChanged: (value) {
                                      setState(() {
                                        sfxVolume = value;
                                      });
                                      widget.sfxPlayer.setVolume(value);
                                      _saveSettings();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '${(sfxVolume * 100).round()}%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: TextButton(
                            onPressed: () {
                              _openMenu(context, widget.sfxPlayer);
                            },
                            child: Text(
                              'Back',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("Error loading settings"));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
