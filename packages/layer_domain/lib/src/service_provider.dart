import 'package:get_it/get_it.dart';

import 'package:module_data/module_data.dart' as data_layer;

import '/src/bloc/users/users_cubit.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final I = ServiceProvider();

  void init() {
    data_layer.ServiceProvider().init();
    _getIt.registerLazySingleton<UsersCubit>(
      () => UsersCubit(usersRepository: _getIt()),
    );
  }
}
