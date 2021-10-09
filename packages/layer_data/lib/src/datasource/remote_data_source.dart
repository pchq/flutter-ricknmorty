import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:module_model/module_model.dart';

abstract class IRemoteDataSource {
  Future<List<User>> loadUsers();
}

class RemoteDataSource implements IRemoteDataSource {
  final http.Client client;

  RemoteDataSource({required this.client});

  @override
  Future<List<User>> loadUsers() async {
    try {
      final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        return (data as List).map((e) => User.fromJson(e)).toList();
      } else {
        throw HttpException('Wrong status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
