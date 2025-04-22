// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) {
  return _PlaceModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceModel {
  int get id => throw _privateConstructorUsedError;
  Tour get tour => throw _privateConstructorUsedError;
  Ship get ship => throw _privateConstructorUsedError;
  Whale get whale => throw _privateConstructorUsedError;

  /// Serializes this PlaceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
    PlaceModel value,
    $Res Function(PlaceModel) then,
  ) = _$PlaceModelCopyWithImpl<$Res, PlaceModel>;
  @useResult
  $Res call({int id, Tour tour, Ship ship, Whale whale});

  $TourCopyWith<$Res> get tour;
  $ShipCopyWith<$Res> get ship;
  $WhaleCopyWith<$Res> get whale;
}

/// @nodoc
class _$PlaceModelCopyWithImpl<$Res, $Val extends PlaceModel>
    implements $PlaceModelCopyWith<$Res> {
  _$PlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tour = null,
    Object? ship = null,
    Object? whale = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            tour:
                null == tour
                    ? _value.tour
                    : tour // ignore: cast_nullable_to_non_nullable
                        as Tour,
            ship:
                null == ship
                    ? _value.ship
                    : ship // ignore: cast_nullable_to_non_nullable
                        as Ship,
            whale:
                null == whale
                    ? _value.whale
                    : whale // ignore: cast_nullable_to_non_nullable
                        as Whale,
          )
          as $Val,
    );
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourCopyWith<$Res> get tour {
    return $TourCopyWith<$Res>(_value.tour, (value) {
      return _then(_value.copyWith(tour: value) as $Val);
    });
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShipCopyWith<$Res> get ship {
    return $ShipCopyWith<$Res>(_value.ship, (value) {
      return _then(_value.copyWith(ship: value) as $Val);
    });
  }

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WhaleCopyWith<$Res> get whale {
    return $WhaleCopyWith<$Res>(_value.whale, (value) {
      return _then(_value.copyWith(whale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceModelImplCopyWith<$Res>
    implements $PlaceModelCopyWith<$Res> {
  factory _$$PlaceModelImplCopyWith(
    _$PlaceModelImpl value,
    $Res Function(_$PlaceModelImpl) then,
  ) = __$$PlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Tour tour, Ship ship, Whale whale});

  @override
  $TourCopyWith<$Res> get tour;
  @override
  $ShipCopyWith<$Res> get ship;
  @override
  $WhaleCopyWith<$Res> get whale;
}

/// @nodoc
class __$$PlaceModelImplCopyWithImpl<$Res>
    extends _$PlaceModelCopyWithImpl<$Res, _$PlaceModelImpl>
    implements _$$PlaceModelImplCopyWith<$Res> {
  __$$PlaceModelImplCopyWithImpl(
    _$PlaceModelImpl _value,
    $Res Function(_$PlaceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tour = null,
    Object? ship = null,
    Object? whale = null,
  }) {
    return _then(
      _$PlaceModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        tour:
            null == tour
                ? _value.tour
                : tour // ignore: cast_nullable_to_non_nullable
                    as Tour,
        ship:
            null == ship
                ? _value.ship
                : ship // ignore: cast_nullable_to_non_nullable
                    as Ship,
        whale:
            null == whale
                ? _value.whale
                : whale // ignore: cast_nullable_to_non_nullable
                    as Whale,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceModelImpl implements _PlaceModel {
  const _$PlaceModelImpl({
    required this.id,
    required this.tour,
    required this.ship,
    required this.whale,
  });

  factory _$PlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceModelImplFromJson(json);

  @override
  final int id;
  @override
  final Tour tour;
  @override
  final Ship ship;
  @override
  final Whale whale;

  @override
  String toString() {
    return 'PlaceModel(id: $id, tour: $tour, ship: $ship, whale: $whale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tour, tour) || other.tour == tour) &&
            (identical(other.ship, ship) || other.ship == ship) &&
            (identical(other.whale, whale) || other.whale == whale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, tour, ship, whale);

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      __$$PlaceModelImplCopyWithImpl<_$PlaceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceModelImplToJson(this);
  }
}

abstract class _PlaceModel implements PlaceModel {
  const factory _PlaceModel({
    required final int id,
    required final Tour tour,
    required final Ship ship,
    required final Whale whale,
  }) = _$PlaceModelImpl;

  factory _PlaceModel.fromJson(Map<String, dynamic> json) =
      _$PlaceModelImpl.fromJson;

  @override
  int get id;
  @override
  Tour get tour;
  @override
  Ship get ship;
  @override
  Whale get whale;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceModelImplCopyWith<_$PlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tour _$TourFromJson(Map<String, dynamic> json) {
  return _Tour.fromJson(json);
}

/// @nodoc
mixin _$Tour {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  @JsonKey(name: 'whale_sighting_chance')
  String get whaleSightingChance => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get coordinates => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;

  /// Serializes this Tour to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourCopyWith<Tour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourCopyWith<$Res> {
  factory $TourCopyWith(Tour value, $Res Function(Tour) then) =
      _$TourCopyWithImpl<$Res, Tour>;
  @useResult
  $Res call({
    String name,
    String image,
    String cost,
    @JsonKey(name: 'whale_sighting_chance') String whaleSightingChance,
    String address,
    String coordinates,
    String description,
    String duration,
  });
}

/// @nodoc
class _$TourCopyWithImpl<$Res, $Val extends Tour>
    implements $TourCopyWith<$Res> {
  _$TourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? cost = null,
    Object? whaleSightingChance = null,
    Object? address = null,
    Object? coordinates = null,
    Object? description = null,
    Object? duration = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            cost:
                null == cost
                    ? _value.cost
                    : cost // ignore: cast_nullable_to_non_nullable
                        as String,
            whaleSightingChance:
                null == whaleSightingChance
                    ? _value.whaleSightingChance
                    : whaleSightingChance // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            coordinates:
                null == coordinates
                    ? _value.coordinates
                    : coordinates // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TourImplCopyWith<$Res> implements $TourCopyWith<$Res> {
  factory _$$TourImplCopyWith(
    _$TourImpl value,
    $Res Function(_$TourImpl) then,
  ) = __$$TourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String image,
    String cost,
    @JsonKey(name: 'whale_sighting_chance') String whaleSightingChance,
    String address,
    String coordinates,
    String description,
    String duration,
  });
}

/// @nodoc
class __$$TourImplCopyWithImpl<$Res>
    extends _$TourCopyWithImpl<$Res, _$TourImpl>
    implements _$$TourImplCopyWith<$Res> {
  __$$TourImplCopyWithImpl(_$TourImpl _value, $Res Function(_$TourImpl) _then)
    : super(_value, _then);

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? cost = null,
    Object? whaleSightingChance = null,
    Object? address = null,
    Object? coordinates = null,
    Object? description = null,
    Object? duration = null,
  }) {
    return _then(
      _$TourImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        cost:
            null == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                    as String,
        whaleSightingChance:
            null == whaleSightingChance
                ? _value.whaleSightingChance
                : whaleSightingChance // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        coordinates:
            null == coordinates
                ? _value.coordinates
                : coordinates // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourImpl implements _Tour {
  const _$TourImpl({
    required this.name,
    required this.image,
    required this.cost,
    @JsonKey(name: 'whale_sighting_chance') required this.whaleSightingChance,
    required this.address,
    required this.coordinates,
    required this.description,
    required this.duration,
  });

  factory _$TourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImplFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final String cost;
  @override
  @JsonKey(name: 'whale_sighting_chance')
  final String whaleSightingChance;
  @override
  final String address;
  @override
  final String coordinates;
  @override
  final String description;
  @override
  final String duration;

  @override
  String toString() {
    return 'Tour(name: $name, image: $image, cost: $cost, whaleSightingChance: $whaleSightingChance, address: $address, coordinates: $coordinates, description: $description, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.whaleSightingChance, whaleSightingChance) ||
                other.whaleSightingChance == whaleSightingChance) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    image,
    cost,
    whaleSightingChance,
    address,
    coordinates,
    description,
    duration,
  );

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      __$$TourImplCopyWithImpl<_$TourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourImplToJson(this);
  }
}

abstract class _Tour implements Tour {
  const factory _Tour({
    required final String name,
    required final String image,
    required final String cost,
    @JsonKey(name: 'whale_sighting_chance')
    required final String whaleSightingChance,
    required final String address,
    required final String coordinates,
    required final String description,
    required final String duration,
  }) = _$TourImpl;

  factory _Tour.fromJson(Map<String, dynamic> json) = _$TourImpl.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  String get cost;
  @override
  @JsonKey(name: 'whale_sighting_chance')
  String get whaleSightingChance;
  @override
  String get address;
  @override
  String get coordinates;
  @override
  String get description;
  @override
  String get duration;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ship _$ShipFromJson(Map<String, dynamic> json) {
  return _Ship.fromJson(json);
}

/// @nodoc
mixin _$Ship {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Ship to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShipCopyWith<Ship> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipCopyWith<$Res> {
  factory $ShipCopyWith(Ship value, $Res Function(Ship) then) =
      _$ShipCopyWithImpl<$Res, Ship>;
  @useResult
  $Res call({String name, String image, String description});
}

/// @nodoc
class _$ShipCopyWithImpl<$Res, $Val extends Ship>
    implements $ShipCopyWith<$Res> {
  _$ShipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShipImplCopyWith<$Res> implements $ShipCopyWith<$Res> {
  factory _$$ShipImplCopyWith(
    _$ShipImpl value,
    $Res Function(_$ShipImpl) then,
  ) = __$$ShipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, String description});
}

/// @nodoc
class __$$ShipImplCopyWithImpl<$Res>
    extends _$ShipCopyWithImpl<$Res, _$ShipImpl>
    implements _$$ShipImplCopyWith<$Res> {
  __$$ShipImplCopyWithImpl(_$ShipImpl _value, $Res Function(_$ShipImpl) _then)
    : super(_value, _then);

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(
      _$ShipImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipImpl implements _Ship {
  const _$ShipImpl({
    required this.name,
    required this.image,
    required this.description,
  });

  factory _$ShipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipImplFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'Ship(name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, description);

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      __$$ShipImplCopyWithImpl<_$ShipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipImplToJson(this);
  }
}

abstract class _Ship implements Ship {
  const factory _Ship({
    required final String name,
    required final String image,
    required final String description,
  }) = _$ShipImpl;

  factory _Ship.fromJson(Map<String, dynamic> json) = _$ShipImpl.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  String get description;

  /// Create a copy of Ship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Whale _$WhaleFromJson(Map<String, dynamic> json) {
  return _Whale.fromJson(json);
}

/// @nodoc
mixin _$Whale {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Whale to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Whale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhaleCopyWith<Whale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhaleCopyWith<$Res> {
  factory $WhaleCopyWith(Whale value, $Res Function(Whale) then) =
      _$WhaleCopyWithImpl<$Res, Whale>;
  @useResult
  $Res call({String name, String image, String description});
}

/// @nodoc
class _$WhaleCopyWithImpl<$Res, $Val extends Whale>
    implements $WhaleCopyWith<$Res> {
  _$WhaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Whale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WhaleImplCopyWith<$Res> implements $WhaleCopyWith<$Res> {
  factory _$$WhaleImplCopyWith(
    _$WhaleImpl value,
    $Res Function(_$WhaleImpl) then,
  ) = __$$WhaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, String description});
}

/// @nodoc
class __$$WhaleImplCopyWithImpl<$Res>
    extends _$WhaleCopyWithImpl<$Res, _$WhaleImpl>
    implements _$$WhaleImplCopyWith<$Res> {
  __$$WhaleImplCopyWithImpl(
    _$WhaleImpl _value,
    $Res Function(_$WhaleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Whale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(
      _$WhaleImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WhaleImpl implements _Whale {
  const _$WhaleImpl({
    required this.name,
    required this.image,
    required this.description,
  });

  factory _$WhaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhaleImplFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'Whale(name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhaleImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, description);

  /// Create a copy of Whale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhaleImplCopyWith<_$WhaleImpl> get copyWith =>
      __$$WhaleImplCopyWithImpl<_$WhaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhaleImplToJson(this);
  }
}

abstract class _Whale implements Whale {
  const factory _Whale({
    required final String name,
    required final String image,
    required final String description,
  }) = _$WhaleImpl;

  factory _Whale.fromJson(Map<String, dynamic> json) = _$WhaleImpl.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  String get description;

  /// Create a copy of Whale
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhaleImplCopyWith<_$WhaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
