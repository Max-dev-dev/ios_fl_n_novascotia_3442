import 'package:flutter/material.dart';
import 'package:ios_fl_n_novascotia_3443/pages/game_screen/deep_sea_chase_game.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2567B1),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color(0xFF2567B1),
        centerTitle: true,
        title: const Text(
          'Welcome\nto Deep Sea Chase',
          textAlign: TextAlign.center,
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Image.asset('assets/images/game_icons/1.png', height: 50),
                const SizedBox(width: 16),
                const Text(
                  'Control the boat left or right\nusing arrow keys',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Collect',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Image.asset('assets/images/game_icons/2.png', height: 40),
                const SizedBox(width: 12),
                const Text(
                  '+1 point',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Image.asset('assets/images/game_icons/3.png', height: 40),
                const SizedBox(width: 12),
                const Text(
                  '+2 points',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Avoid',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Image.asset('assets/images/game_icons/4.png', height: 40),
                const SizedBox(width: 12),
                const Text(
                  'Game over',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(height: 5.0),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const DeepSeaChaseGame()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 270,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFF2567B1),
                    borderRadius: BorderRadius.circular(500),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: Text(
                    'Start Game',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 110),
          ],
        ),
      ),
    );
  }
}
