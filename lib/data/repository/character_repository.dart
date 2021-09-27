import 'package:ricknmorty/core/error/exception.dart';
import 'package:ricknmorty/data/datasource/character_local_data_source.dart';
import 'package:ricknmorty/data/datasource/character_remote_data_source.dart';
import 'package:ricknmorty/data/mapper/character_mapper.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/repository/i_characters_repository.dart';
import 'package:ricknmorty/domain/use_case/get_characters_case.dart';

class CharactersRepository implements ICharactersRepository {
  ICharacterRemoteDataSource remoteDataSource;
  ICharacterLocalDataSource localDataSource;
  // INetworkInfo networkInfo;

  CharactersRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    // required this.networkInfo,
  });

  @override
  Future<List<Character>> getCharactersRepo(int page, CharactersFilter? filter) async {
// ToDo: bool isConnected = await networkInfo.isConnected;
    bool isConnected = true;
    if (isConnected) {
      try {
        final characters = await remoteDataSource.dataCharacters(page, filter);
        // localDataSource.savePersonsToCache(remotePersons);
        return characters.map((item) => CharacterMapper()(item)).toList();
      } catch (e) {
        throw Exception(e);
      }
      // ignore: dead_code
    } else {
      try {
        final characters = await localDataSource.charactersFromCache(filter.toString());
        return characters.map((item) => CharacterMapper()(item)).toList();
      } catch (e) {
        throw Exception(e);
      }
    }
  }
}
