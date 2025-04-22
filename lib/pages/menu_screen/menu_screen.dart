import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_fl_n_novascotia_3443/pages/game_screen/game_screen.dart';
import 'package:ios_fl_n_novascotia_3443/pages/map_screen/map_screen.dart';
import 'package:ios_fl_n_novascotia_3443/pages/settings/settings_screen.dart';
import 'package:ios_fl_n_novascotia_3443/pages/tours_list/favourite_tours_list.dart';
import 'package:ios_fl_n_novascotia_3443/pages/tours_list/tours_list_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    MapScreen(),
    ToursListScreen(),
    FavouritesScreen(),
    GameScreen(),
    SettingsScreen(),
  ];

  final Color activeColor = Colors.white;
  final Color inactiveColor = const Color(0xFF2567B1);

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectedIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(5, (index) {
                  final isSelected = _selectedIndex == index;
                  final icon = _getIcon(index);
                  return GestureDetector(
                    onTap: () => _onItemTapped(index),
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.white : inactiveColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: FaIcon(
                          icon,
                          color: isSelected ? inactiveColor : Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return FontAwesomeIcons.map;
      case 1:
        return FontAwesomeIcons.bars;
      case 2:
        return FontAwesomeIcons.star;
      case 3:
        return FontAwesomeIcons.gamepad;
      case 4:
        return FontAwesomeIcons.gear;
      default:
        return FontAwesomeIcons.circle;
    }
  }
}
