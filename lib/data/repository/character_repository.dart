import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/repository/i_characters_repository.dart';

class CharactersRepository implements ICharactersRepository {
  @override
  Future<List<Character>> getAllCharacters(int page) {
    // TODO: implement getAllCharacters
    throw UnimplementedError();
  }

  @override
  Future<List<Character>> filterCharacters(Map<String, dynamic> filters) {
    // TODO: implement filterCharacters
    throw UnimplementedError();
  }
}
