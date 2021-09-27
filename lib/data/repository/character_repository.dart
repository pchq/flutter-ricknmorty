import 'package:ricknmorty/core/service/network_info.dart';
import 'package:ricknmorty/data/datasource/character_local_data_source.dart';
import 'package:ricknmorty/data/datasource/character_remote_data_source.dart';
import 'package:ricknmorty/data/mapper/character_mapper.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/repository/i_characters_repository.dart';
import 'package:ricknmorty/domain/use_case/get_characters_case.dart';

class CharactersRepository implements ICharactersRepository {
  ICharacterRemoteDataSource remoteDataSource;
  ICharacterLocalDataSource localDataSource;
  INetworkInfo networkInfo;

  CharactersRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<List<Character>> getCharactersRepo(int page, CharactersFilter filter) async {
    final String localDbKey =
        'characters' + filter.toQueryString().replaceAll(RegExp(r"(\W+)"), '');
    bool isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final characters = await remoteDataSource.dataCharacters(page, filter);
        if (page == 1) {
          localDataSource.charactersToCache(characters, localDbKey);
        }

        return characters.map((item) => CharacterMapper()(item)).toList();
      } catch (e) {
        throw Exception(e);
      }
    } else {
      if (page == 1) {
        try {
          final characters = await localDataSource.charactersFromCache(localDbKey);
          return characters.map((item) => CharacterMapper()(item)).toList();
        } catch (e) {
          throw Exception(e);
        }
      } else {
        return [];
      }
    }
  }
}
