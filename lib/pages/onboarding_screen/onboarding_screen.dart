import 'package:flutter/material.dart';
import 'package:ios_fl_n_novascotia_3443/pages/menu_screen/menu_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  final List<String> _imagePaths = List.generate(
    4,
    (index) => 'assets/images/onboarding/${index + 1}.png',
  );

  void _handleTap() {
    if (_currentIndex < _imagePaths.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MenuScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _handleTap,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              _imagePaths[_currentIndex],
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
