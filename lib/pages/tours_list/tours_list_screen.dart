import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_fl_n_novascotia_3443/cubit/nova_scotia_places_cubit.dart';
import 'package:ios_fl_n_novascotia_3443/models/tour_model.dart';
import 'package:ios_fl_n_novascotia_3443/pages/tour_detail/tour_detail_screen.dart';
import 'package:share_plus/share_plus.dart';

class ToursListScreen extends StatelessWidget {
  const ToursListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2567B1),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2567B1),
        title: const Text(
          'Tours List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: BlocBuilder<NovaScotiaPlacesCubit, NovaScotiaPlacesState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
            itemCount: state.places.length,
            itemBuilder: (context, index) {
              final place = state.places[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: _PlaceInfoCard(place: place, onClose: () {}),
              );
            },
          );
        },
      ),
    );
  }
}

class _PlaceInfoCard extends StatelessWidget {
  final PlaceModel place;
  final VoidCallback onClose;

  const _PlaceInfoCard({required this.place, required this.onClose});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NovaScotiaPlacesCubit>();
    final isFav = cubit.isFavorite(place.id);

    return Material(
      color: Colors.transparent,
      child: Container(
        width: 330,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFF2567B1),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    place.tour.image,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                place.tour.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 4),
            // const Align(
            //   alignment: Alignment.centerLeft,
            //   child: Text(
            //     "Price",
            //     style: TextStyle(color: Colors.white, fontSize: 12),
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: List.generate(
            //     int.tryParse(place.tour.cost[0]) ?? 0,
            //     (_) => const Icon(
            //       Icons.attach_money,
            //       color: Colors.yellow,
            //       size: 20,
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 4),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Whale Chance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                place.tour.whaleSightingChance.length,
                (_) => const Icon(Icons.star, color: Colors.yellow, size: 26),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => TourDetailScreen(place: place),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2567B1),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500),
                      side: const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                  child: const Text(
                    "See More",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => cubit.toggleFavorite(place.id),
                      icon: Icon(
                        isFav ? Icons.star : Icons.star_border,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        final message = '''
🌊 Explore the wild waters of Nova Scotia with **${place.tour.name}**!
📍 ${place.tour.address}
🐋 Whale Chance: ${place.tour.whaleSightingChance}
💸 Price Level: ${place.tour.cost}
⏱ Duration: ${place.tour.duration}

Join the adventure! 🐬⚓️
''';
                        Share.share(message);
                      },
                      icon: const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
