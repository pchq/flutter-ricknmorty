import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ricknmorty/core/error/exception.dart';
import 'package:ricknmorty/data/api_model/api_character.dart';

abstract class ICharacterRemoteDataSource {
  /// Calls https://rickandmortyapi.com/api/character/?page={page} endpoint
  ///
  /// Throws [ServerException]
  Future<List<ApiCharacter>> getAll(int page);

  /// Calls https://rickandmortyapi.com/api/character/?name={name}&gender={gender} endpoint
  ///
  /// ToDo Filter

}

class CharacterRemoteDataSource implements ICharacterRemoteDataSource {
  final http.Client client;

  CharacterRemoteDataSource({required this.client});

  @override
  Future<List<ApiCharacter>> getAll(int page) =>
      _getPersonsByUrl('https://rickandmortyapi.com/api/character/?page=$page');

  Future<List<ApiCharacter>> _getPersonsByUrl(String url) async {
    final responce = await client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    if (responce.statusCode == 200) {
      final data = json.decode(responce.body);
      return (data['results'] as List).map((item) => ApiCharacter.fromJson(item)).toList();
    } else {
      throw ServerException(message: 'ServerException \nstatus: ${responce.statusCode}');
    }
  }
}
