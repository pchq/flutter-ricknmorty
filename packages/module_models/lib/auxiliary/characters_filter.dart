import 'package:freezed_annotation/freezed_annotation.dart';

import '../module_models.dart';

part 'characters_filter.freezed.dart';

@freezed
class CharactersFilter with _$CharactersFilter {
  const CharactersFilter._();
  const factory CharactersFilter({
    String? name,
    CharacterAliveStatus? status,
    CharacterGender? gender,
  }) = _CharactersFilter;

  String _enumValue(stringWithDot) {
    String s = stringWithDot.toString().split('.')[1];

    return s;
  }

  String toQueryString() {
    String s = '';
    if (name != null) {
      s += '&name=$name';
    }
    if (status != null) {
      s += '&status=${_enumValue(status)}';
    }
    if (gender != null) {
      s += '&gender=${_enumValue(gender)}';
    }

    return s;
  }
}
