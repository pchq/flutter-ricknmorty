import 'package:module_models/module_models.dart';

abstract class ICharactersRepository {
  Future<List<Character>> getCharacters(int page, CharactersFilter filter);
}
