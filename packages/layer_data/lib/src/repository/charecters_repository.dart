import 'package:layer_domain/layer_domain.dart';
import 'package:module_models/module_models.dart';

import '/src/datasource/remote_data_source.dart';

class CharactersRepository implements ICharactersRepository {
  final IRemoteDataSource remoteDataSource;
  // final ICharacterLocalDataSource localDataSource;
  // final INetworkInfo networkInfo;

  CharactersRepository({
    required this.remoteDataSource,
    // required this.localDataSource,
    // required this.networkInfo,
  });

  @override
  Future<List<Character>> getCharacters(int page, CharactersFilter filter) async {
    // final String localDbKey = 'characters' + filter.toQueryString().replaceAll(RegExp(r"(\W+)"), '');
    // bool isConnected = await networkInfo.isConnected;
    bool isConnected = true;
    if (isConnected) {
      try {
        final characters = await remoteDataSource.loadCharacters(page, filter);
        if (page == 1) {
          // localDataSource.charactersToCache(characters, localDbKey);
        }

        return characters.map((item) => CharacterMapper()(item)).toList();
      } catch (e) {
        throw Exception(e);
      }
    } else {
      if (page == 1) {
        // try {
        //   final characters = await localDataSource.charactersFromCache(localDbKey);
        //   return characters.map((item) => CharacterMapper()(item)).toList();
        // } catch (e) {
        //   throw Exception(e);
        // }
      } else {
        return [];
      }
    }
  }
}
