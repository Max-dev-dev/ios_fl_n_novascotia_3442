import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_fl_n_novascotia_3443/models/tour_model.dart';
import '../../../cubit/nova_scotia_places_cubit.dart';

class TourDetailScreen extends StatefulWidget {
  final PlaceModel place;
  const TourDetailScreen({super.key, required this.place});

  @override
  State<TourDetailScreen> createState() => _TourDetailScreenState();
}

class _TourDetailScreenState extends State<TourDetailScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NovaScotiaPlacesCubit>();
    final isFav = cubit.isFavorite(widget.place.id);

    return Scaffold(
      //backgroundColor: const Color(0xFF2567B1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF2567B1),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isFav ? Icons.star : Icons.star_border,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed:
                        () => setState(
                          () => cubit.toggleFavorite(widget.place.id),
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: IndexedStack(
                  index: _selectedTab,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _TopImage(image: widget.place.tour.image),
                          const SizedBox(height: 12),
                          Center(
                            child: Text(
                              widget.place.tour.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.place.tour.description,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 12),
                          _IconRow(
                            label: "Price",
                            count: int.tryParse(widget.place.tour.cost[0]) ?? 0,
                            icon: Icons.attach_money,
                          ),
                          _IconRow(
                            label: "Whale Chance",
                            count: widget.place.tour.whaleSightingChance.length,
                            icon: Icons.star,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Address: ${widget.place.tour.address}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Coordinates: ${widget.place.tour.coordinates}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Ship
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _TopImage(image: widget.place.ship.image),
                          const SizedBox(height: 12),
                          Center(
                            child: Text(
                              widget.place.ship.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            widget.place.ship.description,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Whale
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _TopImage(image: widget.place.whale.image),
                          const SizedBox(height: 12),
                          Center(
                            child: Text(
                              widget.place.whale.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            widget.place.whale.description,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Tabs
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  final icons = [
                    FontAwesomeIcons.bars,
                    FontAwesomeIcons.ship,
                    FontAwesomeIcons.fish,
                  ];
                  final isSelected = _selectedTab == index;
                  return GestureDetector(
                    onTap: () => setState(() => _selectedTab = index),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color:
                            isSelected ? Colors.white : const Color(0xFF2567B1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: FaIcon(
                          icons[index],
                          color:
                              isSelected
                                  ? const Color(0xFF2567B1)
                                  : Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TopImage extends StatelessWidget {
  final String image;
  const _TopImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        image,
        width: double.infinity,
        height: 180,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _IconRow extends StatelessWidget {
  final String label;
  final int count;
  final IconData icon;

  const _IconRow({
    required this.label,
    required this.count,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 12),
          ...List.generate(
            count,
            (_) => Icon(icon, color: Colors.yellow, size: 20),
          ),
        ],
      ),
    );
  }
}
