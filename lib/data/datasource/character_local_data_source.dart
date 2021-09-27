import 'dart:convert';

import 'package:ricknmorty/data/api_model/api_character.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ricknmorty/core/error/exception.dart';

abstract class ICharacterLocalDataSource {
  ///
  /// Throws [CacheException]
  Future<List<ApiCharacter>> charactersFromCache(String dbKey);

  Future<void> charactersToCache(List<ApiCharacter> characters, String dbKey);
}

class CharacterLocalDataSource implements ICharacterLocalDataSource {
  final SharedPreferences sharedPreferences;

  CharacterLocalDataSource({required this.sharedPreferences});

  @override
  Future<List<ApiCharacter>> charactersFromCache(String dbKey) async {
    final jsonCharactersList = sharedPreferences.getStringList(dbKey);
    if (jsonCharactersList != null && jsonCharactersList.isNotEmpty) {
      return Future.value(
        jsonCharactersList.map((item) => ApiCharacter.fromJson(json.decode(item))).toList(),
      );
    } else {
      return Future.value([]);
    }
  }

  @override
  Future<void> charactersToCache(List<ApiCharacter> characters, String dbKey) async {
    final List<String> jsonCharacterList =
        characters.map((item) => json.encode(item.toJson())).toList();
    sharedPreferences.setStringList(dbKey, jsonCharacterList);
  }
}
