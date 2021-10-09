import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:module_model/module_model.dart';

import '/src/repository/i_users_repository.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  final IUsersRepository usersRepository;

  UsersCubit({
    required this.usersRepository,
  }) : super(UsersInitial());

  void load() async {
    if (state is UsersLoading) return;

    try {
      emit(UsersLoading());
      final List<User> users = await usersRepository.getUsers();
      emit(UsersLoaded(users: users));
    } catch (e) {
      emit(UsersLoadingError(message: e.toString()));
    }
  }
}
