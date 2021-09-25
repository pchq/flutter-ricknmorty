import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ricknmorty/data/api_model/api_character.dart';
import 'package:ricknmorty/domain/use_case/get_characters_case.dart';

abstract class ICharacterRemoteDataSource {
  /// Calls https://rickandmortyapi.com/api/character/??page={page}&name={name}&gender={gender}&... endpoint
  Future<List<ApiCharacter>> dataCharacters(int page, CharactersFilter? filter);
}

class CharacterRemoteDataSource implements ICharacterRemoteDataSource {
  final http.Client client;

  CharacterRemoteDataSource({required this.client});

  @override
  Future<List<ApiCharacter>> dataCharacters(int page, CharactersFilter? filter) async {
    List<ApiCharacter> characters = await _getPersonsByUrl(
        'https://rickandmortyapi.com/api/character/?page=$page${filter?.toQueryString()}');
    return characters;
  }

  Future<List<ApiCharacter>> _getPersonsByUrl(String url) async {
    try {
      final responce = await client.get(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
      );
      if (responce.statusCode == 200) {
        final data = json.decode(responce.body);
        return (data['results'] as List).map((item) => ApiCharacter.fromJson(item)).toList();
      } else {
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
