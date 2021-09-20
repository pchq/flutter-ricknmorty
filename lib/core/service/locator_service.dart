// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:ricknmorty/data/datasource/character_remote_data_source.dart';
import 'package:ricknmorty/data/repository/character_repository.dart';
import 'package:ricknmorty/domain/repository/i_characters_repository.dart';
import 'package:ricknmorty/domain/use_case/all_characters_case.dart';
import 'package:ricknmorty/presentation/bloc/all_characters/all_characters_cubit.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class LocatorService {
  static final locator = GetIt.instance;

  Future<void> init() async {
    // BLoC
    locator.registerFactory(() => AllCharactersCubit(allCharactersCase: locator()));

    // UseCases
    locator.registerLazySingleton(() => AllCharactersCase(locator()));
    // toDo locator.registerLazySingleton(() => FilterCharactersCase(locator()));

    // Repositories
    locator.registerLazySingleton<ICharactersRepository>(
        () => CharactersRepository(remoteDataSource: locator()));

    locator.registerLazySingleton<ICharacterRemoteDataSource>(
        () => CharacterRemoteDataSource(client: locator()));
    // ToDO locator.registerLazySingleton<ICharacterLocalDataSource>(() => CharacterLocalDataSource(sharedPreferences: locator()));

    // Core
    // locator.registerLazySingleton<INetworkInfo>(() => NetworkInfo(connectivity: locator()));

    // External
    locator.registerLazySingleton(() => http.Client());
    // toDo locator.registerLazySingleton(() => Connectivity());
    // final _sharedPreferences = await SharedPreferences.getInstance();
    // locator.registerLazySingleton(() => _sharedPreferences);
  }
}
