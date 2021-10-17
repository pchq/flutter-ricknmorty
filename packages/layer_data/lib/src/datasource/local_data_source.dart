import 'dart:convert';

import 'package:module_models/module_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalDataSource {
  ///
  /// ToDo Throws [CacheException]
  Future<List<ApiCharacter>> charactersFromCache(String dbKey);

  Future<void> charactersToCache(List<ApiCharacter> characters, String dbKey);
}

class LocalDataSource implements ILocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSource({required this.sharedPreferences});

  @override
  Future<List<ApiCharacter>> charactersFromCache(String dbKey) async {
    final jsonCharactersList = sharedPreferences.getStringList(dbKey);
    // ignore: prefer-conditional-expressions
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
