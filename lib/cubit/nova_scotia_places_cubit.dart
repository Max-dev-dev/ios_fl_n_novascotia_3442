import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_fl_n_novascotia_3443/models/tour_model.dart';

class NovaScotiaPlacesState {
  final List<PlaceModel> places;
  final List<int> favoriteIds;
  final bool isLoading;
  final String? errorMessage;

  NovaScotiaPlacesState({
    required this.places,
    required this.favoriteIds,
    required this.isLoading,
    this.errorMessage,
  });

  NovaScotiaPlacesState copyWith({
    List<PlaceModel>? places,
    List<int>? favoriteIds,
    bool? isLoading,
    String? errorMessage,
  }) {
    return NovaScotiaPlacesState(
      places: places ?? this.places,
      favoriteIds: favoriteIds ?? this.favoriteIds,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

class NovaScotiaPlacesCubit extends Cubit<NovaScotiaPlacesState> {
  NovaScotiaPlacesCubit()
    : super(
        NovaScotiaPlacesState(places: [], favoriteIds: [], isLoading: true),
      );

  Future<void> loadPlaces() async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      final String data = await rootBundle.loadString(
        'assets/nova_scotia_places.json',
      );
      final decoded = jsonDecode(data) as Map<String, dynamic>;
      final places =
          (decoded['places'] as List)
              .map((e) => PlaceModel.fromJson(e as Map<String, dynamic>))
              .toList();
      emit(state.copyWith(places: places, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  void toggleFavorite(int id) {
    final updatedFavorites = List<int>.from(state.favoriteIds);
    if (updatedFavorites.contains(id)) {
      updatedFavorites.remove(id);
    } else {
      updatedFavorites.add(id);
    }
    emit(state.copyWith(favoriteIds: updatedFavorites));
  }

  void clearFavorites() {
    emit(state.copyWith(favoriteIds: []));
  }

  bool isFavorite(int id) => state.favoriteIds.contains(id);
}
