import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeepSeaChaseGame extends StatefulWidget {
  const DeepSeaChaseGame({super.key});

  @override
  State<DeepSeaChaseGame> createState() => _DeepSeaChaseGameState();
}

class _DeepSeaChaseGameState extends State<DeepSeaChaseGame>
    with SingleTickerProviderStateMixin {
  final double _boatWidth = 60;
  double _boatX = 0;
  int _score = 0;
  int _bestScore = 0;
  int whalesCaught = 0;
  int camerasCaught = 0;
  bool _isGameOver = false;

  final List<_FallingItem> _items = [];
  late Timer _itemSpawnTimer;
  late Ticker _ticker;

  late double _minY;
  late double _maxY;

  @override
  void initState() {
    super.initState();
    _loadBestScore();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenHeight = MediaQuery.of(context).size.height;
      _minY = 120;
      _maxY = screenHeight - 130;
      _boatX = MediaQuery.of(context).size.width / 2 - _boatWidth / 2;
      setState(() {});
    });
    _ticker = createTicker(_update)..start();
    _spawnItems();
  }

  Future<void> _loadBestScore() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _bestScore = prefs.getInt('bestScore') ?? 0);
  }

  Future<void> _saveBestScore() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('bestScore', _bestScore);
  }

  void _spawnItems() {
    _itemSpawnTimer = Timer.periodic(const Duration(milliseconds: 800), (
      timer,
    ) {
      if (_isGameOver) return;
      final rand = Random();
      final x = rand.nextDouble() * MediaQuery.of(context).size.width;
      final type = _ItemType.values[rand.nextInt(3)];
      _items.add(_FallingItem(x: x, y: _minY - 40, type: type));
    });
  }

  void _update(Duration _) {
    if (_isGameOver) return;

    setState(() {
      for (final item in _items) {
        item.y += 2.5;
      }

      final caught =
          _items.where((item) {
            return (item.y > _maxY - 50) &&
                (item.x > _boatX && item.x < _boatX + _boatWidth);
          }).toList();

      for (final item in caught) {
        if (item.type == _ItemType.storm) {
          _endGame();
          return;
        } else {
          if (item.type == _ItemType.whale) {
            _score += 1;
            whalesCaught++;
          } else {
            _score += 2;
            camerasCaught++;
          }
        }
        _items.remove(item);
      }

      _items.removeWhere((item) => item.y > _maxY);
    });
  }

  void _endGame() {
    setState(() {
      _isGameOver = true;
      _bestScore = max(_bestScore, _score);
    });
    _saveBestScore();
    _ticker.stop();
    _itemSpawnTimer.cancel();
    _showGameOverDialog();
  }

  void _resetGame() {
    setState(() {
      _items.clear();
      _score = 0;
      whalesCaught = 0;
      camerasCaught = 0;
      _isGameOver = false;
      _boatX = MediaQuery.of(context).size.width / 2 - _boatWidth / 2;
    });
    _ticker.start();
    _spawnItems();
  }

  void _showGameOverDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            backgroundColor: const Color(0xFF2567B1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Game Over',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Your score: $_score',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Best score: $_bestScore',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                if (whalesCaught > 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/game_icons/2.png', height: 40),
                      const SizedBox(width: 8),
                      Text(
                        'x$whalesCaught',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                if (camerasCaught > 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/game_icons/3.png', height: 40),
                      const SizedBox(width: 8),
                      Text(
                        'x$camerasCaught',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    _resetGame();
                  },
                  child: Container(
                    width: 180,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFF2567B1),
                      borderRadius: BorderRadius.circular(500),
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: Text(
                      'Play Again',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 180,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFF2567B1),
                      borderRadius: BorderRadius.circular(500),
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: Text(
                      'Main Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF2567B1),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Best score: $_bestScore',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Current score: $_score',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Divider(color: Colors.white, thickness: 2.0, height: 2.0),
              ],
            ),
          ),
          ..._items.map(
            (item) => Positioned(
              top: item.y.clamp(_minY, _maxY),
              left: item.x,
              child: Image.asset(item.type.assetPath, height: 40),
            ),
          ),
          Positioned(
            top: _minY,
            left: 0,
            right: 0,
            height: _maxY - _minY,
            child: Container(color: Colors.white.withOpacity(0.1)),
          ),

          Positioned(
            bottom: 130,
            left: _boatX,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color: Colors.transparent,
                // border: Border.all(
                //   color: const Color.fromARGB(255, 23, 66, 115),
                //   width: 2,
                // ),
              ),
              child: Image.asset(
                'assets/images/game_icons/1.png',
                height: 70,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 40,
            right: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ArrowButton(
                  icon: Icons.arrow_left,
                  onTap: () => setState(() => _boatX = max(0, _boatX - 40)),
                ),
                const SizedBox(width: 20),
                _ArrowButton(
                  icon: Icons.arrow_right,
                  onTap:
                      () => setState(
                        () =>
                            _boatX = min(screenWidth - _boatWidth, _boatX + 40),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _ArrowButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Icon(icon, size: 40, color: Color(0xFF2567B1)),
      ),
    );
  }
}

enum _ItemType { whale, camera, storm }

extension on _ItemType {
  String get assetPath {
    switch (this) {
      case _ItemType.whale:
        return 'assets/images/game_icons/2.png';
      case _ItemType.camera:
        return 'assets/images/game_icons/3.png';
      case _ItemType.storm:
        return 'assets/images/game_icons/4.png';
    }
  }
}

class _FallingItem {
  double x;
  double y;
  final _ItemType type;

  _FallingItem({required this.x, required this.y, required this.type});
}
