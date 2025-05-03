import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import '../scenes/scenario.dart';

class InstructionScreen extends StatefulWidget  {
  const InstructionScreen({super.key});

  @override
  State<InstructionScreen> createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  double _opacity = 1.0;
  bool _isFading = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), _fadeIn);
  }

  void _fadeIn() async {
    if (_isFading) return;
    setState(() {
      _opacity = 0.0;
      _isFading = true;
    });

    await Future.delayed(const Duration(milliseconds: 1000));

    if (!mounted) return;
    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const ScenarioScreen()),
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
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}