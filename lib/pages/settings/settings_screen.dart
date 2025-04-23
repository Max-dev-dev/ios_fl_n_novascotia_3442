import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:ios_fl_n_novascotia_3443/cubit/nova_scotia_places_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NovaScotiaPlacesCubit>();

    Future<void> _resetGameRecord(BuildContext context) async {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              backgroundColor: const Color(0xFF2567B1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: const Text(
                'Reset Game Record?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: const Text(
                'Are you sure you want to reset your best score? This action cannot be undone.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.remove('bestScore');
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            _SettingsActionButton(
              label: 'Reset Game Record',
              icon: Icons.refresh,
              onTap: () => _resetGameRecord(context),
            ),
            const SizedBox(height: 16),
            _SettingsActionButton(
              label: 'Clear Favorites',
              icon: Icons.cleaning_services_outlined,
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        backgroundColor: const Color(0xFF2567B1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        title: const Text(
                          'Clear Favorites?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        content: const Text(
                          'Are you sure you want to remove all favorites? This action cannot be undone.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              cubit.clearFavorites();
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Clear',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                );
              },
            ),
            const SizedBox(height: 16),
            _SettingsActionButton(
              label: 'Share app',
              icon: Icons.share,
              onTap: () {
                const message = '''
🐳 Bay Watch NS – Whale Watching & Ocean Tours in Nova Scotia

Discover the best whale watching experiences along Nova Scotia’s breathtaking coastline! Bay Watch NS helps you find, plan, and enjoy boat tours with real-time info, interactive maps, and marine wildlife highlights.

🧭 Key Features:
• Interactive map with boarding points & open-sea routes  
• Quick access to all tours in list or favourites  
• Detailed tour profiles with pricing & boat info  
• Whale explorer with photos & fun facts  
• Mini-game: steer your boat & dodge storm clouds  
• Share your trips & save your top picks  
• Works offline – perfect for the wild coast!

Whether you're a tourist, nature lover, or local explorer – this is your ultimate marine guide to Canada’s East Coast!
''';
                Share.share(message);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingsActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _SettingsActionButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Icon(icon, color: Colors.white, size: 24),
          ],
        ),
      ),
    );
  }
}
