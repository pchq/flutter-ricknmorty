// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterTearOff {
  const _$CharacterTearOff();

  _Character call(
      {required int id,
      required String name,
      required CharacterAliveStatus status,
      required String species,
      required CharacterGender gender,
      required String origin,
      required int originId,
      required String location,
      required int locationId,
      required String image,
      required List<int> episodesId,
      required DateTime created}) {
    return _Character(
      id: id,
      name: name,
      status: status,
      species: species,
      gender: gender,
      origin: origin,
      originId: originId,
      location: location,
      locationId: locationId,
      image: image,
      episodesId: episodesId,
      created: created,
    );
  }
}

/// @nodoc
const $Character = _$CharacterTearOff();

/// @nodoc
mixin _$Character {
  /// The id of the character.
  int get id => throw _privateConstructorUsedError;

  /// The name of the character.
  String get name => throw _privateConstructorUsedError;

  /// The status of the character ('Alive', 'Dead' or 'unknown').
  CharacterAliveStatus get status => throw _privateConstructorUsedError;

  /// The species of the character.
  /// + The type or subspecies of the character
  String get species => throw _privateConstructorUsedError;

  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  CharacterGender get gender => throw _privateConstructorUsedError;

  /// Name of the character's origin location.
  String get origin => throw _privateConstructorUsedError;

  /// Id of the character's origin location.
  int get originId => throw _privateConstructorUsedError;

  /// Name of the character's last known location endpoint.
  String get location => throw _privateConstructorUsedError;

  /// Id of the character's last known location endpoint.
  int get locationId => throw _privateConstructorUsedError;

  /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
  String get image => throw _privateConstructorUsedError;

  /// List of episodes IDs in which this character appeared.
  List<int> get episodesId => throw _privateConstructorUsedError;

  /// Time at which the character was created in the database.
  DateTime get created => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      CharacterAliveStatus status,
      String species,
      CharacterGender gender,
      String origin,
      int originId,
      String location,
      int locationId,
      String image,
      List<int> episodesId,
      DateTime created});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  final Character _value;
  // ignore: unused_field
  final $Res Function(Character) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? originId = freezed,
    Object? location = freezed,
    Object? locationId = freezed,
    Object? image = freezed,
    Object? episodesId = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterAliveStatus,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      originId: originId == freezed
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episodesId: episodesId == freezed
          ? _value.episodesId
          : episodesId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(
          _Character value, $Res Function(_Character) then) =
      __$CharacterCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      CharacterAliveStatus status,
      String species,
      CharacterGender gender,
      String origin,
      int originId,
      String location,
      int locationId,
      String image,
      List<int> episodesId,
      DateTime created});
}

/// @nodoc
class __$CharacterCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(_Character _value, $Res Function(_Character) _then)
      : super(_value, (v) => _then(v as _Character));

  @override
  _Character get _value => super._value as _Character;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? originId = freezed,
    Object? location = freezed,
    Object? locationId = freezed,
    Object? image = freezed,
    Object? episodesId = freezed,
    Object? created = freezed,
  }) {
    return _then(_Character(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterAliveStatus,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      originId: originId == freezed
          ? _value.originId
          : originId // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episodesId: episodesId == freezed
          ? _value.episodesId
          : episodesId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Character implements _Character {
  const _$_Character(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.origin,
      required this.originId,
      required this.location,
      required this.locationId,
      required this.image,
      required this.episodesId,
      required this.created});

  @override

  /// The id of the character.
  final int id;
  @override

  /// The name of the character.
  final String name;
  @override

  /// The status of the character ('Alive', 'Dead' or 'unknown').
  final CharacterAliveStatus status;
  @override

  /// The species of the character.
  /// + The type or subspecies of the character
  final String species;
  @override

  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  final CharacterGender gender;
  @override

  /// Name of the character's origin location.
  final String origin;
  @override

  /// Id of the character's origin location.
  final int originId;
  @override

  /// Name of the character's last known location endpoint.
  final String location;
  @override

  /// Id of the character's last known location endpoint.
  final int locationId;
  @override

  /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
  final String image;
  @override

  /// List of episodes IDs in which this character appeared.
  final List<int> episodesId;
  @override

  /// Time at which the character was created in the database.
  final DateTime created;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, status: $status, species: $species, gender: $gender, origin: $origin, originId: $originId, location: $location, locationId: $locationId, image: $image, episodesId: $episodesId, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Character &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.originId, originId) ||
                const DeepCollectionEquality()
                    .equals(other.originId, originId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.episodesId, episodesId) ||
                const DeepCollectionEquality()
                    .equals(other.episodesId, episodesId)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(originId) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(locationId) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(episodesId) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);
}

abstract class _Character implements Character {
  const factory _Character(
      {required int id,
      required String name,
      required CharacterAliveStatus status,
      required String species,
      required CharacterGender gender,
      required String origin,
      required int originId,
      required String location,
      required int locationId,
      required String image,
      required List<int> episodesId,
      required DateTime created}) = _$_Character;

  @override

  /// The id of the character.
  int get id => throw _privateConstructorUsedError;
  @override

  /// The name of the character.
  String get name => throw _privateConstructorUsedError;
  @override

  /// The status of the character ('Alive', 'Dead' or 'unknown').
  CharacterAliveStatus get status => throw _privateConstructorUsedError;
  @override

  /// The species of the character.
  /// + The type or subspecies of the character
  String get species => throw _privateConstructorUsedError;
  @override

  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  CharacterGender get gender => throw _privateConstructorUsedError;
  @override

  /// Name of the character's origin location.
  String get origin => throw _privateConstructorUsedError;
  @override

  /// Id of the character's origin location.
  int get originId => throw _privateConstructorUsedError;
  @override

  /// Name of the character's last known location endpoint.
  String get location => throw _privateConstructorUsedError;
  @override

  /// Id of the character's last known location endpoint.
  int get locationId => throw _privateConstructorUsedError;
  @override

  /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
  String get image => throw _privateConstructorUsedError;
  @override

  /// List of episodes IDs in which this character appeared.
  List<int> get episodesId => throw _privateConstructorUsedError;
  @override

  /// Time at which the character was created in the database.
  DateTime get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharacterCopyWith<_Character> get copyWith =>
      throw _privateConstructorUsedError;
}
