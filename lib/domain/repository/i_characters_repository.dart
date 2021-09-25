import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/use_case/get_characters_case.dart';

abstract class ICharactersRepository {
  Future<List<Character>> getCharactersRepo(int page, CharactersFilter filter);
}
