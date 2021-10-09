import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'package:module_domain/module_domain.dart';

import '/src/repository/users_repository.dart';
import '/src/datasource/remote_data_source.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final I = ServiceProvider();

  void init() {
    _getIt.registerLazySingleton<IUsersRepository>(
      () => UsersRepository(remoteDataSource: _getIt()),
    );
    _getIt.registerLazySingleton<IRemoteDataSource>(
      () => RemoteDataSource(client: _getIt()),
    );
    _getIt.registerLazySingleton<http.Client>(
      () => http.Client(),
    );
  }
}
