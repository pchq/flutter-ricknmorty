import 'package:layer_domain/layer_domain.dart';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '/src/datasource/remote_data_source.dart';
import '/src/repository/charecters_repository.dart';
import '/src/datasource/local_data_source.dart';
import '/src/service/network_info.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final I = ServiceProvider();

  Future<void> init() async {
    _getIt.registerLazySingleton<ICharactersRepository>(
      () => CharactersRepository(
        remoteDataSource: _getIt(),
        localDataSource: _getIt(),
        networkInfo: _getIt(),
      ),
    );
    _getIt.registerLazySingleton<IRemoteDataSource>(
      () => RemoteDataSource(client: _getIt()),
    );
    _getIt.registerLazySingleton<ILocalDataSource>(
      () => LocalDataSource(sharedPreferences: _getIt()),
    );
    _getIt.registerLazySingleton<INetworkInfo>(
      () => NetworkInfo(connectivity: _getIt()),
    );
    _getIt.registerLazySingleton<http.Client>(
      () => http.Client(),
    );
    _getIt.registerLazySingleton<Connectivity>(
      () => Connectivity(),
    );

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _getIt.registerLazySingleton<SharedPreferences>(
      () => sharedPreferences,
    );
  }
}
