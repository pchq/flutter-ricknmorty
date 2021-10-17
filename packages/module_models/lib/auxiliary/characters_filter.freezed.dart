// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'characters_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharactersFilterTearOff {
  const _$CharactersFilterTearOff();

  _CharactersFilter call(
      {String? name, CharacterAliveStatus? status, CharacterGender? gender}) {
    return _CharactersFilter(
      name: name,
      status: status,
      gender: gender,
    );
  }
}

/// @nodoc
const $CharactersFilter = _$CharactersFilterTearOff();

/// @nodoc
mixin _$CharactersFilter {
  String? get name => throw _privateConstructorUsedError;
  CharacterAliveStatus? get status => throw _privateConstructorUsedError;
  CharacterGender? get gender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharactersFilterCopyWith<CharactersFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersFilterCopyWith<$Res> {
  factory $CharactersFilterCopyWith(
          CharactersFilter value, $Res Function(CharactersFilter) then) =
      _$CharactersFilterCopyWithImpl<$Res>;
  $Res call(
      {String? name, CharacterAliveStatus? status, CharacterGender? gender});
}

/// @nodoc
class _$CharactersFilterCopyWithImpl<$Res>
    implements $CharactersFilterCopyWith<$Res> {
  _$CharactersFilterCopyWithImpl(this._value, this._then);

  final CharactersFilter _value;
  // ignore: unused_field
  final $Res Function(CharactersFilter) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterAliveStatus?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
    ));
  }
}

/// @nodoc
abstract class _$CharactersFilterCopyWith<$Res>
    implements $CharactersFilterCopyWith<$Res> {
  factory _$CharactersFilterCopyWith(
          _CharactersFilter value, $Res Function(_CharactersFilter) then) =
      __$CharactersFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name, CharacterAliveStatus? status, CharacterGender? gender});
}

/// @nodoc
class __$CharactersFilterCopyWithImpl<$Res>
    extends _$CharactersFilterCopyWithImpl<$Res>
    implements _$CharactersFilterCopyWith<$Res> {
  __$CharactersFilterCopyWithImpl(
      _CharactersFilter _value, $Res Function(_CharactersFilter) _then)
      : super(_value, (v) => _then(v as _CharactersFilter));

  @override
  _CharactersFilter get _value => super._value as _CharactersFilter;

  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? gender = freezed,
  }) {
    return _then(_CharactersFilter(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterAliveStatus?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
    ));
  }
}

/// @nodoc

class _$_CharactersFilter extends _CharactersFilter {
  const _$_CharactersFilter({this.name, this.status, this.gender}) : super._();

  @override
  final String? name;
  @override
  final CharacterAliveStatus? status;
  @override
  final CharacterGender? gender;

  @override
  String toString() {
    return 'CharactersFilter(name: $name, status: $status, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersFilter &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  _$CharactersFilterCopyWith<_CharactersFilter> get copyWith =>
      __$CharactersFilterCopyWithImpl<_CharactersFilter>(this, _$identity);
}

abstract class _CharactersFilter extends CharactersFilter {
  const factory _CharactersFilter(
      {String? name,
      CharacterAliveStatus? status,
      CharacterGender? gender}) = _$_CharactersFilter;
  const _CharactersFilter._() : super._();

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  CharacterAliveStatus? get status => throw _privateConstructorUsedError;
  @override
  CharacterGender? get gender => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharactersFilterCopyWith<_CharactersFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
