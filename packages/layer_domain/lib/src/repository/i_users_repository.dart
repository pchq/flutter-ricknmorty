import 'package:module_model/module_model.dart';

abstract class IUsersRepository {
  Future<List<User>> getUsers();
}
