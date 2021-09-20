// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:ricknmorty/core/error/exception.dart';
// import 'package:ricknmorty/feature/data/models/person_model.dart';

// abstract class IPersonLocalDataSource {
//   ///
//   /// Throws [CacheException]
//   Future<List<PersonModel>> getLastPersonsFromCache();

//   Future<void> savePersonsToCache(List<PersonModel> persons);
// }

// const CACHED_PERSONS_KEY = 'CACHED_PERSONS_KEY';

// class PersonLocalDataSource implements IPersonLocalDataSource {
//   final SharedPreferences sharedPreferences;

//   PersonLocalDataSource({required this.sharedPreferences});

//   @override
//   Future<List<PersonModel>> getLastPersonsFromCache() async {
//     final jsonPersonsList = sharedPreferences.getStringList(CACHED_PERSONS_KEY);
//     if (jsonPersonsList != null && jsonPersonsList.isNotEmpty) {
//       return Future.value(
//         jsonPersonsList.map((item) => PersonModel.fromJson(json.decode(item))).toList(),
//       );
//     } else {
//       throw CacheException(message: 'CacheException \n persons = $jsonPersonsList \n');
//     }
//   }

//   @override
//   Future<void> savePersonsToCache(List<PersonModel> persons) async {
//     final List<String> jsonPersonsList = persons.map((item) => json.encode(item.toJson())).toList();
//     sharedPreferences.setStringList(CACHED_PERSONS_KEY, jsonPersonsList);
//   }
// }
