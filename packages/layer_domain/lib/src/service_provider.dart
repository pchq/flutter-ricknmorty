import 'package:get_it/get_it.dart';

import 'package:layer_data/layer_data.dart' as layer_data;

import '/src/bloc/characters/characters_cubit.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final I = ServiceProvider();

  void init() {
    layer_data.ServiceProvider().init();

    _getIt.registerLazySingleton<CharactersCubit>(
      () => CharactersCubit(charactersRepository: _getIt()),
    );
  }
}
