import 'package:module_domain/module_domain.dart';
import 'package:module_model/module_model.dart';

import '/src/datasource/remote_data_source.dart';

class UsersRepository implements IUsersRepository {
  final IRemoteDataSource remoteDataSource;

  UsersRepository({
    required this.remoteDataSource,
  });

  @override
  Future<List<User>> getUsers() {
    return remoteDataSource.loadUsers();
  }
}
