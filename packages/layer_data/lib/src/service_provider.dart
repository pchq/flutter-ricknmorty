import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'package:layer_domain/layer_domain.dart';

import '/src/datasource/remote_data_source.dart';
import '/src/repository/charecters_repository.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final I = ServiceProvider();

  void init() {
    _getIt.registerLazySingleton<ICharactersRepository>(
      () => CharactersRepository(remoteDataSource: _getIt()),
    );
    _getIt.registerLazySingleton<IRemoteDataSource>(
      () => RemoteDataSource(client: _getIt()),
    );
    _getIt.registerLazySingleton<http.Client>(
      () => http.Client(),
    );
  }
}
