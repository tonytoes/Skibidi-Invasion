import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import '../settings/settings_scenario.dart';

void _openMenu(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const MenuScreen()),
  );
}

class SettingsMoreScreen extends StatefulWidget {
  const SettingsMoreScreen({super.key});

  @override
  State<SettingsMoreScreen> createState() => _SettingsMoreScreenState();
}

class _SettingsMoreScreenState extends State<SettingsMoreScreen> {

  bool firstSwitchValue = true;
  double music = 1.0;
  double sound = 1.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            color: Colors.black.withValues(alpha: 0.7),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 24),
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
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Row (
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AnimatedToggleSwitch<bool>.dual(
                            current: firstSwitchValue,
                            first: false,
                            second: true,
                            spacing: 1,
                            style: const ToggleStyle(
                              borderColor: Colors.transparent,
                            ),
                            borderWidth: 5.0,
                            height: 43,
                            onChanged: (b) => setState(() => firstSwitchValue = b),
                            styleBuilder: (b) => ToggleStyle(
                                indicatorColor: b ? Colors.green : Colors.red
                            ),
                            iconBuilder:  (value) => value
                                ? const Icon(Icons.volume_up)
                                : const Icon(Icons.volume_off),
                            textBuilder: (value) => value
                                ? const Center(child: Text('On'))
                                :const Center(child: Text('Off')),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Enable Text to Speech',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ]
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Music',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            width: 300,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 1,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                              ),
                              child: Slider(
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.white.withOpacity(0.5),
                                  max: 1.0,
                                  min: 0.0,
                                  value: music,
                                  onChanged: (value){
                                    setState(() {
                                      music = value;
                                    });
                                  }
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sound',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                    Container(
                        width: 300,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 1,
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                          ),
                          child: Slider(
                              activeColor: Colors.white,
                              inactiveColor: Colors.white.withOpacity(0.5),
                              max: 1.0,
                              min: 0.0,
                              value: sound,
                              onChanged: (value){
                                setState(() {
                                  sound = value;
                                });
                                }
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:200),
                    child: TextButton(
                      onPressed: () {
                        _openMenu(context);
                      },
                      child: Text(
                        'Back',
                        style: const TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
