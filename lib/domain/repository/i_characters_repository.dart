import 'package:ricknmorty/domain/model/character.dart';

abstract class ICharactersRepository {
  Future<List<Character>> getAllCharacters(int page);
  Future<List<Character>> filterCharacters(Map<String, dynamic> filters);
}
