// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiCharacter _$ApiCharacterFromJson(Map<String, dynamic> json) {
  return _ApiCharacter.fromJson(json);
}

/// @nodoc
class _$ApiCharacterTearOff {
  const _$ApiCharacterTearOff();

  _ApiCharacter call(
      {required int id,
      required String name,
      required String status,
      required String species,
      required String type,
      required String gender,
      required Map<String, String> origin,
      required Map<String, String> location,
      required String image,
      required List<String> episode,
      required String url,
      required String created}) {
    return _ApiCharacter(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      origin: origin,
      location: location,
      image: image,
      episode: episode,
      url: url,
      created: created,
    );
  }

  ApiCharacter fromJson(Map<String, Object> json) {
    return ApiCharacter.fromJson(json);
  }
}

/// @nodoc
const $ApiCharacter = _$ApiCharacterTearOff();

/// @nodoc
mixin _$ApiCharacter {
  /// The id of the character.
  int get id => throw _privateConstructorUsedError;

  /// The name of the character.
  String get name => throw _privateConstructorUsedError;

  /// The status of the character ('Alive', 'Dead' or 'unknown').
  String get status => throw _privateConstructorUsedError;

  /// The species of the character.
  String get species => throw _privateConstructorUsedError;

  /// The type or subspecies of the character.
  String get type => throw _privateConstructorUsedError;

  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  String get gender => throw _privateConstructorUsedError;

  /// Name and link to the character's origin location.
  Map<String, String> get origin => throw _privateConstructorUsedError;

  /// Name and link to the character's last known location endpoint.
  Map<String, String> get location => throw _privateConstructorUsedError;

  /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
  String get image => throw _privateConstructorUsedError;

  /// (urls)	List of episodes in which this character appeared.
  List<String> get episode => throw _privateConstructorUsedError;

  /// (url)	Link to the character's own URL endpoint.
  String get url => throw _privateConstructorUsedError;

  /// Time at which the character was created in the database.
  String get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCharacterCopyWith<ApiCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCharacterCopyWith<$Res> {
  factory $ApiCharacterCopyWith(
          ApiCharacter value, $Res Function(ApiCharacter) then) =
      _$ApiCharacterCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      Map<String, String> origin,
      Map<String, String> location,
      String image,
      List<String> episode,
      String url,
      String created});
}

/// @nodoc
class _$ApiCharacterCopyWithImpl<$Res> implements $ApiCharacterCopyWith<$Res> {
  _$ApiCharacterCopyWithImpl(this._value, this._then);

  final ApiCharacter _value;
  // ignore: unused_field
  final $Res Function(ApiCharacter) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
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
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiCharacterCopyWith<$Res>
    implements $ApiCharacterCopyWith<$Res> {
  factory _$ApiCharacterCopyWith(
          _ApiCharacter value, $Res Function(_ApiCharacter) then) =
      __$ApiCharacterCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      Map<String, String> origin,
      Map<String, String> location,
      String image,
      List<String> episode,
      String url,
      String created});
}

/// @nodoc
class __$ApiCharacterCopyWithImpl<$Res> extends _$ApiCharacterCopyWithImpl<$Res>
    implements _$ApiCharacterCopyWith<$Res> {
  __$ApiCharacterCopyWithImpl(
      _ApiCharacter _value, $Res Function(_ApiCharacter) _then)
      : super(_value, (v) => _then(v as _ApiCharacter));

  @override
  _ApiCharacter get _value => super._value as _ApiCharacter;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_ApiCharacter(
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
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiCharacter implements _ApiCharacter {
  const _$_ApiCharacter(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required this.episode,
      required this.url,
      required this.created});

  factory _$_ApiCharacter.fromJson(Map<String, dynamic> json) =>
      _$$_ApiCharacterFromJson(json);

  @override

  /// The id of the character.
  final int id;
  @override

  /// The name of the character.
  final String name;
  @override

  /// The status of the character ('Alive', 'Dead' or 'unknown').
  final String status;
  @override

  /// The species of the character.
  final String species;
  @override

  /// The type or subspecies of the character.
  final String type;
  @override

  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  final String gender;
  @override

  /// Name and link to the character's origin location.
  final Map<String, String> origin;
  @override

  /// Name and link to the character's last known location endpoint.
  final Map<String, String> location;
  @override

  /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
  final String image;
  @override

  /// (urls)	List of episodes in which this character appeared.
  final List<String> episode;
  @override

  /// (url)	Link to the character's own URL endpoint.
  final String url;
  @override

  /// Time at which the character was created in the database.
  final String created;

  @override
  String toString() {
    return 'ApiCharacter(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiCharacter &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.episode, episode) ||
                const DeepCollectionEquality()
                    .equals(other.episode, episode)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
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
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(episode) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$ApiCharacterCopyWith<_ApiCharacter> get copyWith =>
      __$ApiCharacterCopyWithImpl<_ApiCharacter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiCharacterToJson(this);
  }
}

abstract class _ApiCharacter implements ApiCharacter {
  const factory _ApiCharacter(
      {required int id,
      required String name,
      required String status,
      required String species,
      required String type,
      required String gender,
      required Map<String, String> origin,
      required Map<String, String> location,
      required String image,
      required List<String> episode,
      required String url,
      required String created}) = _$_ApiCharacter;

  factory _ApiCharacter.fromJson(Map<String, dynamic> json) =
      _$_ApiCharacter.fromJson;

  @override

  /// The id of the character.
  int get id => throw _privateConstructorUsedError;
  @override

  /// The name of the character.
  String get name => throw _privateConstructorUsedError;
  @override

  /// The status of the character ('Alive', 'Dead' or 'unknown').
  String get status => throw _privateConstructorUsedError;
  @override

  /// The species of the character.
  String get species => throw _privateConstructorUsedError;
  @override

  /// The type or subspecies of the character.
  String get type => throw _privateConstructorUsedError;
  @override

  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  String get gender => throw _privateConstructorUsedError;
  @override

  /// Name and link to the character's origin location.
  Map<String, String> get origin => throw _privateConstructorUsedError;
  @override

  /// Name and link to the character's last known location endpoint.
  Map<String, String> get location => throw _privateConstructorUsedError;
  @override

  /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
  String get image => throw _privateConstructorUsedError;
  @override

  /// (urls)	List of episodes in which this character appeared.
  List<String> get episode => throw _privateConstructorUsedError;
  @override

  /// (url)	Link to the character's own URL endpoint.
  String get url => throw _privateConstructorUsedError;
  @override

  /// Time at which the character was created in the database.
  String get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiCharacterCopyWith<_ApiCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}
