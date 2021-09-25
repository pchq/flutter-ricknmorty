import 'package:equatable/equatable.dart';

class Location extends Equatable {
  /*
  ToDo: use all fields >>>
  /// The id of the location.
  final int id;
  ///  The name of the location.
  final String name;
  ///  The type of the location.
  final String type;
  ///  The dimension in which the location is located.
  final String dimension;
  /// (urls) List of character who have been last seen in the location.
  final List<Character> residents;
  /// (url) Link to the location's own endpoint.
  final String url;
  ///  Time at which the location was created in the database.
  final DateTime created;

  <<<*/

  final String name;
  final String url;

  const Location({
    required this.name,
    required this.url,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [name, url];
}
