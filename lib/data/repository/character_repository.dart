import 'package:ricknmorty/data/datasource/character_remote_data_source.dart';
import 'package:ricknmorty/data/mapper/character_mapper.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/repository/i_characters_repository.dart';

class CharactersRepository implements ICharactersRepository {
  ICharacterRemoteDataSource remoteDataSource;
  // ICharacterLlcalDataSource localDataSource;
  // INetworkInfo networkInfo;

  CharactersRepository({
    required this.remoteDataSource,
    // required this.localDataSource,
    // required this.networkInfo,
  });

  @override
  Future<List<Character>> getAllCharacters(int page) async {
    // ToDo bool isConnected = await networkInfo.isConnected;
    bool isConnected = true;
    if (isConnected) {
      try {
        final characters = await remoteDataSource.getAll(page);
        // localDataSource.savePersonsToCache(remotePersons);
        return characters.map((item) => CharacterMapper()(item)).toList();
      } catch (e) {
        throw Exception(e);
      }
    } else {
      // try {
      //   final localPersons = await localDataSource.getLastPersonsFromCache();
      //   return Right(localPersons);
      // } on CacheException {
      //   return Left(CacheFailure());
      // }
    }
  }

  @override
  Future<List<Character>> filterCharacters(Map<String, dynamic> filters) async {
    // TODO: implement filterCharacters
    throw UnimplementedError();
  }
}
