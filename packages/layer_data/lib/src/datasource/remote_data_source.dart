import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:module_models/module_models.dart';

abstract class IRemoteDataSource {
  /// Calls https://rickandmortyapi.com/api/character/??page={page}&name={name}&gender={gender}&... endpoint
  Future<List<ApiCharacter>> loadCharacters(int page, CharactersFilter? filter);
}

class RemoteDataSource implements IRemoteDataSource {
  final http.Client client;

  RemoteDataSource({required this.client});

  Future<List<ApiCharacter>> _getAllByUrl(String url) async {
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

  @override
  Future<List<ApiCharacter>> loadCharacters(int page, CharactersFilter? filter) async {
    List<ApiCharacter> characters = await _getAllByUrl(
      'https://rickandmortyapi.com/api/character/?page=$page${filter?.toQueryString()}',
    );

    return characters;
  }
}
