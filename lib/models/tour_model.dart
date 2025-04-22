// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_model.freezed.dart';
part 'tour_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    required int id,
    required Tour tour,
    required Ship ship,
    required Whale whale,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) => _$PlaceModelFromJson(json);
}

@freezed
class Tour with _$Tour {
  const factory Tour({
    required String name,
    required String image,
    required String cost,
    @JsonKey(name: 'whale_sighting_chance') required String whaleSightingChance,
    required String address,
    required String coordinates,
    required String description,
    required String duration,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}

@freezed
class Ship with _$Ship {
  const factory Ship({
    required String name,
    required String image,
    required String description,
  }) = _Ship;

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);
}

@freezed
class Whale with _$Whale {
  const factory Whale({
    required String name,
    required String image,
    required String description,
  }) = _Whale;

  factory Whale.fromJson(Map<String, dynamic> json) => _$WhaleFromJson(json);
}