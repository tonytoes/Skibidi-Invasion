import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class SettingsScreen extends StatefulWidget {
      const SettingsScreen({super.key});

      @override
      State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool firstSwitchValue = true;
  double vol = 0.5;
  double vol2 = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 750,
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
                        SizedBox(width: 10),
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
                    padding: const EdgeInsets.only(top:25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Music',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                          Container(
                            width: 300,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 3,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                              ),
                              child: Slider(
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.white,
                                  max: 1.0,
                                  min: 0.0,
                                  value: vol,
                                  onChanged: (value){
                                    setState(() {
                                      vol = value;
                                    });
                                  }
                              ),
                            ),
                          ),
                    SizedBox(width: 10),
                    Text(
                        '${(vol * 100).round()}%',
                        style: TextStyle(color: Colors.white, fontSize: 16),)
                        ]
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sounds',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'JosefinSans', fontWeight: FontWeight.w400),
                          ),
                          Container(
                            width: 300,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 3,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                              ),
                              child: Slider(
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.white,
                                  max: 1.0,
                                  min: 0.0,
                                  value: vol2,
                                  onChanged: (value){
                                    setState(() {
                                      vol2 = value;
                                    });
                                  }
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '${(vol2 * 100).round()}%',
                            style: TextStyle(color: Colors.white, fontSize: 16),)
                        ]
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 30.0),
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
                    padding: const EdgeInsets.only(top:200),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
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
