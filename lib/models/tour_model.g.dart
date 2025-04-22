// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceModelImpl _$$PlaceModelImplFromJson(Map<String, dynamic> json) =>
    _$PlaceModelImpl(
      id: (json['id'] as num).toInt(),
      tour: Tour.fromJson(json['tour'] as Map<String, dynamic>),
      ship: Ship.fromJson(json['ship'] as Map<String, dynamic>),
      whale: Whale.fromJson(json['whale'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceModelImplToJson(_$PlaceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tour': instance.tour,
      'ship': instance.ship,
      'whale': instance.whale,
    };

_$TourImpl _$$TourImplFromJson(Map<String, dynamic> json) => _$TourImpl(
  name: json['name'] as String,
  image: json['image'] as String,
  cost: json['cost'] as String,
  whaleSightingChance: json['whale_sighting_chance'] as String,
  address: json['address'] as String,
  coordinates: json['coordinates'] as String,
  description: json['description'] as String,
  duration: json['duration'] as String,
);

Map<String, dynamic> _$$TourImplToJson(_$TourImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'cost': instance.cost,
      'whale_sighting_chance': instance.whaleSightingChance,
      'address': instance.address,
      'coordinates': instance.coordinates,
      'description': instance.description,
      'duration': instance.duration,
    };

_$ShipImpl _$$ShipImplFromJson(Map<String, dynamic> json) => _$ShipImpl(
  name: json['name'] as String,
  image: json['image'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$$ShipImplToJson(_$ShipImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
    };

_$WhaleImpl _$$WhaleImplFromJson(Map<String, dynamic> json) => _$WhaleImpl(
  name: json['name'] as String,
  image: json['image'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$$WhaleImplToJson(_$WhaleImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
    };
